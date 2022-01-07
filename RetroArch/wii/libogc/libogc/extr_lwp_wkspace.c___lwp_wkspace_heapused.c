
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int used_size; } ;


 int __lwp_heap_getinfo (int *,TYPE_1__*) ;
 int __wkspace_heap ;
 TYPE_1__ __wkspace_iblock ;

u32 __lwp_wkspace_heapused()
{
 __lwp_heap_getinfo(&__wkspace_heap,&__wkspace_iblock);
 return __wkspace_iblock.used_size;
}
