
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ free_size; scalar_t__ used_size; } ;
typedef TYPE_1__ heap_iblock ;


 int __lwp_heap_getinfo (int *,TYPE_1__*) ;
 int gx_mem2_heap ;

uint32_t gx_mem2_total(void)
{
   heap_iblock info;
   __lwp_heap_getinfo(&gx_mem2_heap, &info);
   return info.used_size + info.free_size;
}
