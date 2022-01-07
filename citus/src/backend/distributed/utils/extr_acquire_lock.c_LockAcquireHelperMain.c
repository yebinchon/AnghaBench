
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_10__ {scalar_t__ bgw_extra; } ;
struct TYPE_9__ {int tupdesc; int * vals; } ;
struct TYPE_8__ {int DatabaseId; int lock_cooldown; } ;
struct TYPE_7__ {int * data; } ;
typedef TYPE_1__ StringInfoData ;
typedef int Oid ;
typedef TYPE_2__ LockAcquireHelperArgs ;
typedef int Datum ;


 int BackgroundWorkerInitializeConnectionByOid (int ,int ,int ) ;
 int BackgroundWorkerUnblockSignals () ;
 int CommitTransactionCommand () ;
 int DatumGetBool (int ) ;
 int DatumGetInt32 (int ) ;
 long DeadlineTimestampTzToTimeout (int const) ;
 int FATAL ;
 int GetCurrentTimestamp () ;
 int GetTransactionSnapshot () ;
 int INFO ;
 int INT4OID ;
 int Int32GetDatum (int) ;
 int InvalidOid ;
 int LOG ;
 TYPE_6__* MyBgworkerEntry ;
 int PopActiveSnapshot () ;
 int PushActiveSnapshot (int ) ;
 int SIGTERM ;
 int SPI_OK_SELECT ;
 int SPI_connect () ;
 int SPI_execute_with_args (int *,int const,int *,int *,int *,int,int ) ;
 int SPI_finish () ;
 int SPI_getbinval (int ,int ,int,int*) ;
 int SPI_processed ;
 TYPE_5__* SPI_tuptable ;
 int STATE_IDLE ;
 int STATE_RUNNING ;
 int SetCurrentStatementStartTimestamp () ;
 scalar_t__ ShouldAcquireLock (int) ;
 int StartTransactionCommand () ;
 int TimestampTzPlusMilliseconds (int const,int ) ;
 int WARNING ;
 int appendStringInfo (TYPE_1__*,char*) ;
 int elog (int ,char*,int,...) ;
 int initStringInfo (TYPE_1__*) ;
 int lock_acquire_helper_sigterm ;
 int pgstat_report_activity (int ,int *) ;
 int pgstat_report_stat (int) ;
 int pqsignal (int ,int ) ;
 int proc_exit (int ) ;

void
LockAcquireHelperMain(Datum main_arg)
{
 int backendPid = DatumGetInt32(main_arg);
 StringInfoData sql;
 LockAcquireHelperArgs *args = (LockAcquireHelperArgs *) MyBgworkerEntry->bgw_extra;
 long timeout = 0;
 const TimestampTz connectionStart = GetCurrentTimestamp();
 const TimestampTz deadline = TimestampTzPlusMilliseconds(connectionStart,
                args->lock_cooldown);


 const int paramCount = 1;
 Oid paramTypes[1] = { INT4OID };
 Datum paramValues[1];

 pqsignal(SIGTERM, lock_acquire_helper_sigterm);

 BackgroundWorkerUnblockSignals();

 elog(LOG, "lock acquiring backend started for backend %d (cooldown %dms)", backendPid,
   args->lock_cooldown);







 do {
  timeout = DeadlineTimestampTzToTimeout(deadline);
 } while (timeout > 0 && ShouldAcquireLock(timeout));


 BackgroundWorkerInitializeConnectionByOid(args->DatabaseId, InvalidOid, 0);
 initStringInfo(&sql);
 appendStringInfo(&sql,
      "SELECT \n"
      "    DISTINCT conflicting.pid,\n"
      "    pg_terminate_backend(conflicting.pid)\n"
      "  FROM pg_locks AS blocked\n"
      "       JOIN pg_locks AS conflicting\n"
      "         ON (conflicting.database = blocked.database\n"
      "             AND conflicting.objid = blocked.objid)\n"
      " WHERE conflicting.granted = true\n"
      "   AND blocked.granted = false\n"
      "   AND blocked.pid = $1;");
 paramValues[0] = Int32GetDatum(backendPid);

 while (ShouldAcquireLock(100))
 {
  int row = 0;
  int spiStatus = 0;

  elog(LOG, "canceling competing backends for backend %d", backendPid);




  SetCurrentStatementStartTimestamp();
  StartTransactionCommand();
  SPI_connect();
  PushActiveSnapshot(GetTransactionSnapshot());
  pgstat_report_activity(STATE_RUNNING, sql.data);

  spiStatus = SPI_execute_with_args(sql.data, paramCount, paramTypes, paramValues,
            ((void*)0), 0, 0);

  if (spiStatus == SPI_OK_SELECT)
  {
   for (row = 0; row < SPI_processed; row++)
   {
    int terminatedPid = 0;
    bool isTerminated = 0;
    bool isnull = 0;

    terminatedPid = DatumGetInt32(SPI_getbinval(SPI_tuptable->vals[0],
               SPI_tuptable->tupdesc,
               1, &isnull));

    isTerminated = DatumGetBool(SPI_getbinval(SPI_tuptable->vals[0],
                SPI_tuptable->tupdesc,
                2, &isnull));

    if (isTerminated)
    {
     elog(WARNING, "terminated conflicting backend %d", terminatedPid);
    }
    else
    {
     elog(INFO,
       "attempt to terminate conflicting backend %d was unsuccessful",
       terminatedPid);
    }
   }
  }
  else
  {
   elog(FATAL, "cannot cancel competing backends for backend %d", backendPid);
  }




  SPI_finish();
  PopActiveSnapshot();
  CommitTransactionCommand();
  pgstat_report_stat(0);
  pgstat_report_activity(STATE_IDLE, ((void*)0));
 }


 elog(LOG, "lock acquiring backend finished for backend %d", backendPid);


 proc_exit(0);
}
