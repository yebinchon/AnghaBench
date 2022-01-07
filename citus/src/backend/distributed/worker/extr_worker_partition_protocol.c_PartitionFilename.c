
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 int MIN_PARTITION_FILENAME_WIDTH ;
 int PARTITION_FILE_PREFIX ;
 int appendStringInfo (TYPE_1__*,char*,int ,int ,int ,int ) ;
 TYPE_1__* makeStringInfo () ;

StringInfo
PartitionFilename(StringInfo directoryName, uint32 partitionId)
{
 StringInfo partitionFilename = makeStringInfo();
 appendStringInfo(partitionFilename, "%s/%s%0*u",
      directoryName->data,
      PARTITION_FILE_PREFIX, MIN_PARTITION_FILENAME_WIDTH, partitionId);

 return partitionFilename;
}
