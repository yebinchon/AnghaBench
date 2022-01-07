
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_9__ {TYPE_1__* filePath; int fileBuffer; int fileCompat; } ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ FileOutputStream ;
typedef scalar_t__ File ;


 int ERROR ;
 int FileCompatFromFileStart (scalar_t__) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PG_BINARY ;
 scalar_t__ PathNameOpenFilePerm (int ,int const,int const) ;
 int S_IRUSR ;
 int S_IWUSR ;
 TYPE_1__* UserPartitionFilename (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 int makeStringInfo () ;
 TYPE_2__* palloc0 (int) ;

__attribute__((used)) static FileOutputStream *
OpenPartitionFiles(StringInfo directoryName, uint32 fileCount)
{
 FileOutputStream *partitionFileArray = ((void*)0);
 File fileDescriptor = 0;
 uint32 fileIndex = 0;
 const int fileFlags = (O_APPEND | O_CREAT | O_RDWR | O_TRUNC | PG_BINARY);
 const int fileMode = (S_IRUSR | S_IWUSR);

 partitionFileArray = palloc0(fileCount * sizeof(FileOutputStream));

 for (fileIndex = 0; fileIndex < fileCount; fileIndex++)
 {
  StringInfo filePath = UserPartitionFilename(directoryName, fileIndex);

  fileDescriptor = PathNameOpenFilePerm(filePath->data, fileFlags, fileMode);
  if (fileDescriptor < 0)
  {
   ereport(ERROR, (errcode_for_file_access(),
       errmsg("could not open file \"%s\": %m", filePath->data)));
  }

  partitionFileArray[fileIndex].fileCompat = FileCompatFromFileStart(
   fileDescriptor);
  partitionFileArray[fileIndex].fileBuffer = makeStringInfo();
  partitionFileArray[fileIndex].filePath = filePath;
 }

 return partitionFileArray;
}
