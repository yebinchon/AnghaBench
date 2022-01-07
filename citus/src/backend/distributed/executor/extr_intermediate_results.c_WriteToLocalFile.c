
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int FileCompat ;


 int ERROR ;
 int FileWriteCompat (int *,int ,int ,int ) ;
 int PG_WAIT_IO ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;

__attribute__((used)) static void
WriteToLocalFile(StringInfo copyData, FileCompat *fileCompat)
{
 int bytesWritten = FileWriteCompat(fileCompat, copyData->data,
            copyData->len,
            PG_WAIT_IO);
 if (bytesWritten < 0)
 {
  ereport(ERROR, (errcode_for_file_access(),
      errmsg("could not append to file: %m")));
 }
}
