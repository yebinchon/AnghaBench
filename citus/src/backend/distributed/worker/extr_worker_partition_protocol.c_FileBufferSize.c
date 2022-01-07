
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint32 ;


 int rint (double) ;

__attribute__((used)) static uint32
FileBufferSize(int partitionBufferSizeInKB, uint32 fileCount)
{
 double partitionBufferSize = (double) partitionBufferSizeInKB * 1024.0;
 uint32 fileBufferSize = (uint32) rint(partitionBufferSize / fileCount);

 return fileBufferSize;
}
