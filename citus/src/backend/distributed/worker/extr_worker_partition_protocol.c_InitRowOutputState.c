
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* null_print; char* null_print_client; int file_encoding; int need_transcoding; int fe_msgbuf; int rowcontext; int binary; void* delim; } ;
typedef int CopyOutStateData ;
typedef TYPE_1__* CopyOutState ;


 int ALLOCSET_DEFAULT_INITSIZE ;
 int ALLOCSET_DEFAULT_MAXSIZE ;
 int ALLOCSET_DEFAULT_MINSIZE ;
 int AllocSetContextCreateExtended (int ,char*,int ,int ,int ) ;
 int BinaryWorkerCopyFormat ;
 int CurrentMemoryContext ;
 int ERROR ;
 int GetDatabaseEncoding () ;
 scalar_t__ PG_ENCODING_IS_CLIENT_ONLY (int) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 int makeStringInfo () ;
 int palloc0 (int) ;
 int pg_database_encoding_max_length () ;
 int pg_get_client_encoding () ;
 char* pg_server_to_any (char*,int,int) ;
 void* pstrdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static CopyOutState
InitRowOutputState(void)
{
 CopyOutState rowOutputState = (CopyOutState) palloc0(sizeof(CopyOutStateData));

 int fileEncoding = pg_get_client_encoding();
 int databaseEncoding = GetDatabaseEncoding();
 int databaseEncodingMaxLength = pg_database_encoding_max_length();


 char *nullPrint = pstrdup("\\N");
 int nullPrintLen = strlen(nullPrint);
 char *nullPrintClient = pg_server_to_any(nullPrint, nullPrintLen, fileEncoding);


 rowOutputState->null_print = nullPrint;
 rowOutputState->null_print_client = nullPrintClient;
 rowOutputState->delim = pstrdup("\t");

 rowOutputState->binary = BinaryWorkerCopyFormat;


 rowOutputState->file_encoding = fileEncoding;

 if (PG_ENCODING_IS_CLIENT_ONLY(fileEncoding))
 {
  ereport(ERROR, (errmsg("cannot repartition into encoding caller cannot "
          "receive")));
 }


 if ((fileEncoding != databaseEncoding) || (databaseEncodingMaxLength > 1))
 {
  rowOutputState->need_transcoding = 1;
 }
 else
 {
  rowOutputState->need_transcoding = 0;
 }






 rowOutputState->rowcontext = AllocSetContextCreateExtended(CurrentMemoryContext,
                  "WorkerRowOutputContext",
                  ALLOCSET_DEFAULT_MINSIZE,
                  ALLOCSET_DEFAULT_INITSIZE,
                  ALLOCSET_DEFAULT_MAXSIZE);


 rowOutputState->fe_msgbuf = makeStringInfo();

 return rowOutputState;
}
