
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ deviceData; } ;
typedef TYPE_1__ devoptab_t ;
typedef int PARTITION ;


 TYPE_1__* GetDeviceOpTab (char const*) ;

PARTITION* _FAT_partition_getPartitionFromPath (const char* path)
{
   const devoptab_t *devops = GetDeviceOpTab (path);

   if (!devops)
      return ((void*)0);

   return (PARTITION*)devops->deviceData;
}
