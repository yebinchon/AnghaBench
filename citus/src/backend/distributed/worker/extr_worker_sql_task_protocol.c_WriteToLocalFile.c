
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fileCompat; } ;
typedef TYPE_1__ TaskFileDestReceiver ;
struct TYPE_6__ {int len; int data; } ;
typedef TYPE_2__* StringInfo ;


 int ERROR ;
 int FileWriteCompat (int *,int ,int ,int ) ;
 int PG_WAIT_IO ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;

__attribute__((used)) static void
WriteToLocalFile(StringInfo copyData, TaskFileDestReceiver *taskFileDest)
{
 int bytesWritten = FileWriteCompat(&taskFileDest->fileCompat, copyData->data,
            copyData->len, PG_WAIT_IO);
 if (bytesWritten < 0)
 {
  ereport(ERROR, (errcode_for_file_access(),
      errmsg("could not append to file: %m")));
 }
}
