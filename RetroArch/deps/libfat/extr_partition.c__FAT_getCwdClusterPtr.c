
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int cwdCluster; } ;
typedef TYPE_1__ PARTITION ;


 TYPE_1__* _FAT_partition_getPartitionFromPath (char const*) ;

uint32_t* _FAT_getCwdClusterPtr(const char* name)
{
 PARTITION *partition = _FAT_partition_getPartitionFromPath(name);

 if (!partition)
  return ((void*)0);

 return &partition->cwdCluster;
}
