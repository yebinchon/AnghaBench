
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef int boolean_t ;


 int FALSE ;
 int VM_KERN_MEMORY_NONE ;
 void* zalloc_internal (int ,int ,int ,int ,int ) ;

void *
zalloc_canblock(zone_t zone, boolean_t canblock)
{
    return (zalloc_internal(zone, canblock, FALSE, 0, VM_KERN_MEMORY_NONE));
}
