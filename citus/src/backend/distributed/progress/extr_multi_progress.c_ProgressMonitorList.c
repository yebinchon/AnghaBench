
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int text ;
typedef int dsm_segment ;
typedef void* dsm_handle ;
typedef int TupleTableSlot ;
struct TYPE_3__ {int setResult; int setDesc; } ;
typedef TYPE_1__ ReturnSetInfo ;
typedef int ProgressMonitorData ;
typedef int Oid ;
typedef int List ;
typedef int Datum ;


 void* DatumGetUInt64 (int ) ;
 int ExecClearTuple (int *) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 TYPE_1__* FunctionCallGetTupleStore1 (int ,int ,int ) ;
 int FunctionOid (char*,char*,int) ;
 int InvalidOid ;
 int * MakeSingleTupleTableSlotCompat (int ,int *) ;
 int * MonitorDataFromDSMHandle (void*,int **) ;
 int * NIL ;
 int PointerGetDatum (int *) ;
 int TTSOpsMinimalTuple ;
 int * cstring_to_text (char*) ;
 int * lappend (int *,int *) ;
 int pg_stat_get_progress_info ;
 int slot_getattr (int *,int const,int*) ;
 int tuplestore_gettupleslot (int ,int,int,int *) ;

List *
ProgressMonitorList(uint64 commandTypeMagicNumber, List **attachedDSMSegments)
{






 const int magicNumberIndex = 0 + 1 + 3;
 const int dsmHandleIndex = 1 + 1 + 3;







 text *commandTypeText = cstring_to_text("VACUUM");
 Datum commandTypeDatum = PointerGetDatum(commandTypeText);
 Oid getProgressInfoFunctionOid = InvalidOid;
 TupleTableSlot *tupleTableSlot = ((void*)0);
 ReturnSetInfo *progressResultSet = ((void*)0);
 List *monitorList = NIL;

 getProgressInfoFunctionOid = FunctionOid("pg_catalog",
            "pg_stat_get_progress_info",
            1);

 progressResultSet = FunctionCallGetTupleStore1(pg_stat_get_progress_info,
               getProgressInfoFunctionOid,
               commandTypeDatum);

 tupleTableSlot = MakeSingleTupleTableSlotCompat(progressResultSet->setDesc,
             &TTSOpsMinimalTuple);


 for (;;)
 {
  bool nextTuple = 0;
  bool isNull = 0;
  Datum magicNumberDatum = 0;
  uint64 magicNumber = 0;

  nextTuple = tuplestore_gettupleslot(progressResultSet->setResult,
           1,
           0,
           tupleTableSlot);

  if (!nextTuple)
  {
   break;
  }

  magicNumberDatum = slot_getattr(tupleTableSlot, magicNumberIndex, &isNull);
  magicNumber = DatumGetUInt64(magicNumberDatum);

  if (!isNull && magicNumber == commandTypeMagicNumber)
  {
   Datum dsmHandleDatum = slot_getattr(tupleTableSlot, dsmHandleIndex, &isNull);
   dsm_handle dsmHandle = DatumGetUInt64(dsmHandleDatum);
   dsm_segment *attachedSegment = ((void*)0);
   ProgressMonitorData *monitor = MonitorDataFromDSMHandle(dsmHandle,
                 &attachedSegment);

   if (monitor != ((void*)0))
   {
    *attachedDSMSegments = lappend(*attachedDSMSegments, attachedSegment);
    monitorList = lappend(monitorList, monitor);
   }
  }

  ExecClearTuple(tupleTableSlot);
 }

 ExecDropSingleTupleTableSlot(tupleTableSlot);

 return monitorList;
}
