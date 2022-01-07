
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_9__ {TYPE_1__* fileBuffer; } ;
struct TYPE_8__ {scalar_t__ len; int data; } ;
typedef TYPE_1__* StringInfo ;
typedef TYPE_2__ FileOutputStream ;


 scalar_t__ FileBufferSizeInBytes ;
 int FileOutputStreamFlush (TYPE_2__*) ;
 int appendBinaryStringInfo (TYPE_1__*,int ,scalar_t__) ;
 int resetStringInfo (TYPE_1__*) ;

__attribute__((used)) static void
FileOutputStreamWrite(FileOutputStream *file, StringInfo dataToWrite)
{
 StringInfo fileBuffer = file->fileBuffer;
 uint32 newBufferSize = fileBuffer->len + dataToWrite->len;

 appendBinaryStringInfo(fileBuffer, dataToWrite->data, dataToWrite->len);

 if (newBufferSize > FileBufferSizeInBytes)
 {
  FileOutputStreamFlush(file);

  resetStringInfo(fileBuffer);
 }
}
