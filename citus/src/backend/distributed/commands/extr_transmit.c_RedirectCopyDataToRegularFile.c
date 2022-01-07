
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int FileCompat ;
typedef int File ;


 int ERROR ;
 int FileClose (int ) ;
 int FileCompatFromFileStart (int ) ;
 int FileOpenForTransmit (char const*,int const,int const) ;
 int FileWriteCompat (int *,int ,scalar_t__,int ) ;
 int FreeStringInfo (TYPE_1__*) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PG_BINARY ;
 int PG_WAIT_IO ;
 int ReceiveCopyData (TYPE_1__*) ;
 int S_IRUSR ;
 int S_IWUSR ;
 int SendCopyInStart () ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;
 TYPE_1__* makeStringInfo () ;
 int resetStringInfo (TYPE_1__*) ;

void
RedirectCopyDataToRegularFile(const char *filename)
{
 StringInfo copyData = makeStringInfo();
 bool copyDone = 0;
 const int fileFlags = (O_APPEND | O_CREAT | O_RDWR | O_TRUNC | PG_BINARY);
 const int fileMode = (S_IRUSR | S_IWUSR);
 File fileDesc = FileOpenForTransmit(filename, fileFlags, fileMode);
 FileCompat fileCompat = FileCompatFromFileStart(fileDesc);

 SendCopyInStart();

 copyDone = ReceiveCopyData(copyData);
 while (!copyDone)
 {

  if (copyData->len > 0)
  {
   int appended = FileWriteCompat(&fileCompat, copyData->data,
             copyData->len, PG_WAIT_IO);

   if (appended != copyData->len)
   {
    ereport(ERROR, (errcode_for_file_access(),
        errmsg("could not append to received file: %m")));
   }
  }

  resetStringInfo(copyData);
  copyDone = ReceiveCopyData(copyData);
 }

 FreeStringInfo(copyData);
 FileClose(fileDesc);
}
