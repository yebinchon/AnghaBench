
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* filePath; int fileCompat; TYPE_2__* fileBuffer; } ;
struct TYPE_6__ {int len; int data; } ;
struct TYPE_5__ {int data; } ;
typedef TYPE_2__* StringInfo ;
typedef TYPE_3__ FileOutputStream ;


 int ERROR ;
 int FileWriteCompat (int *,int ,int,int ) ;
 int PG_WAIT_IO ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int,int ) ;
 scalar_t__ errno ;

__attribute__((used)) static void
FileOutputStreamFlush(FileOutputStream *file)
{
 StringInfo fileBuffer = file->fileBuffer;
 int written = 0;

 errno = 0;
 written = FileWriteCompat(&file->fileCompat, fileBuffer->data, fileBuffer->len,
         PG_WAIT_IO);
 if (written != fileBuffer->len)
 {
  ereport(ERROR, (errcode_for_file_access(),
      errmsg("could not write %d bytes to partition file \"%s\"",
          fileBuffer->len, file->filePath->data)));
 }
}
