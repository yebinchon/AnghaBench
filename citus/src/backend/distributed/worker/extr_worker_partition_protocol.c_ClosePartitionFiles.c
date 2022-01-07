
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {int filePath; int fileBuffer; TYPE_1__ fileCompat; } ;
typedef TYPE_2__ FileOutputStream ;


 int FileClose (int ) ;
 int FileOutputStreamFlush (TYPE_2__*) ;
 int FreeStringInfo (int ) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
ClosePartitionFiles(FileOutputStream *partitionFileArray, uint32 fileCount)
{
 uint32 fileIndex = 0;
 for (fileIndex = 0; fileIndex < fileCount; fileIndex++)
 {
  FileOutputStream *partitionFile = &partitionFileArray[fileIndex];

  FileOutputStreamFlush(partitionFile);

  FileClose(partitionFile->fileCompat.fd);
  FreeStringInfo(partitionFile->fileBuffer);
  FreeStringInfo(partitionFile->filePath);
 }

 pfree(partitionFileArray);
}
