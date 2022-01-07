
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef int vm_tag_t ;
typedef int vm_size_t ;
typedef int boolean_t ;


 int FALSE ;
 void* zalloc_internal (int ,int ,int ,int ,int ) ;

void *
zalloc_canblock_tag(zone_t zone, boolean_t canblock, vm_size_t reqsize, vm_tag_t tag)
{
 return (zalloc_internal(zone, canblock, FALSE, reqsize, tag));
}
