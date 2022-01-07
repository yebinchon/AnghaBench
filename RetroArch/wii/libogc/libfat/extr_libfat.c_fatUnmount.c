
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ open_r; scalar_t__ deviceData; } ;
typedef TYPE_1__ devoptab_t ;
struct TYPE_5__ {scalar_t__ open_r; } ;
typedef int PARTITION ;


 scalar_t__ GetDeviceOpTab (char const*) ;
 int RemoveDevice (char const*) ;
 int _FAT_mem_free (TYPE_1__*) ;
 int _FAT_partition_destructor (int *) ;
 TYPE_2__ dotab_fat ;

void fatUnmount (const char* name) {
 devoptab_t *devops;
 PARTITION* partition;

 if(!name)
  return;

 devops = (devoptab_t*)GetDeviceOpTab (name);
 if (!devops) {
  return;
 }


 if (devops->open_r != dotab_fat.open_r) {
  return;
 }

 if (RemoveDevice (name) == -1) {
  return;
 }

 partition = (PARTITION*)devops->deviceData;
 _FAT_partition_destructor (partition);
 _FAT_mem_free (devops);
}
