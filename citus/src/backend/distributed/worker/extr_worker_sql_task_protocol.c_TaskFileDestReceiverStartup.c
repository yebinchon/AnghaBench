
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {int filePath; int fileCompat; int columnOutputFunctions; TYPE_2__* copyOutState; int executorState; scalar_t__ binaryCopyFormat; int tupleDescriptor; int memoryContext; } ;
typedef TYPE_1__ TaskFileDestReceiver ;
struct TYPE_6__ {char* delim; char* null_print; char* null_print_client; int fe_msgbuf; scalar_t__ binary; int rowcontext; } ;
typedef int MemoryContext ;
typedef int DestReceiver ;
typedef int CopyOutStateData ;
typedef TYPE_2__* CopyOutState ;


 int AppendCopyBinaryHeaders (TYPE_2__*) ;
 int ColumnOutputFunctions (int ,scalar_t__) ;
 int FileCompatFromFileStart (int ) ;
 int FileOpenForTransmit (int ,int const,int const) ;
 int GetPerTupleMemoryContext (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PG_BINARY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int WriteToLocalFile (int ,TYPE_1__*) ;
 int makeStringInfo () ;
 scalar_t__ palloc0 (int) ;
 int resetStringInfo (int ) ;

__attribute__((used)) static void
TaskFileDestReceiverStartup(DestReceiver *dest, int operation,
       TupleDesc inputTupleDescriptor)
{
 TaskFileDestReceiver *taskFileDest = (TaskFileDestReceiver *) dest;

 CopyOutState copyOutState = ((void*)0);
 const char *delimiterCharacter = "\t";
 const char *nullPrintCharacter = "\\N";

 const int fileFlags = (O_APPEND | O_CREAT | O_RDWR | O_TRUNC | PG_BINARY);
 const int fileMode = (S_IRUSR | S_IWUSR);


 MemoryContext oldContext = MemoryContextSwitchTo(taskFileDest->memoryContext);

 taskFileDest->tupleDescriptor = inputTupleDescriptor;


 copyOutState = (CopyOutState) palloc0(sizeof(CopyOutStateData));
 copyOutState->delim = (char *) delimiterCharacter;
 copyOutState->null_print = (char *) nullPrintCharacter;
 copyOutState->null_print_client = (char *) nullPrintCharacter;
 copyOutState->binary = taskFileDest->binaryCopyFormat;
 copyOutState->fe_msgbuf = makeStringInfo();
 copyOutState->rowcontext = GetPerTupleMemoryContext(taskFileDest->executorState);
 taskFileDest->copyOutState = copyOutState;

 taskFileDest->columnOutputFunctions = ColumnOutputFunctions(inputTupleDescriptor,
                copyOutState->binary);

 taskFileDest->fileCompat = FileCompatFromFileStart(FileOpenForTransmit(
                 taskFileDest->filePath,
                 fileFlags,
                 fileMode));

 if (copyOutState->binary)
 {

  resetStringInfo(copyOutState->fe_msgbuf);
  AppendCopyBinaryHeaders(copyOutState);

  WriteToLocalFile(copyOutState->fe_msgbuf, taskFileDest);
 }

 MemoryContextSwitchTo(oldContext);
}
