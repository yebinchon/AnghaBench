
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;


 int FALSE ;
 int TRUE ;
 int VM_KERN_MEMORY_NONE ;
 void* zalloc_internal (int ,int ,int ,int ,int ) ;

void *
zalloc(zone_t zone)
{
 return (zalloc_internal(zone, TRUE, FALSE, 0, VM_KERN_MEMORY_NONE));
}
