
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int lgPageShift; int lgPmapMemFirstppnum; void* lgPmapMemEndAddr; void* lgPmapMemStartAddr; } ;


 int PAGE_SHIFT ;
 TYPE_1__ lowGlo ;

void patch_low_glo_vm_page_info(void * start_addr, void * end_addr, uint32_t first_ppnum)
{
 lowGlo.lgPmapMemStartAddr = (uint64_t)start_addr;
 lowGlo.lgPmapMemEndAddr = (uint64_t)end_addr;
 lowGlo.lgPmapMemFirstppnum = first_ppnum;
 lowGlo.lgPageShift = PAGE_SHIFT;
}
