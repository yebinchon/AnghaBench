
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_2__ {void* lgPmapMemFirstppnum; void* lgPmapMemEndAddr; void* lgPmapMemStartAddr; } ;


 TYPE_1__ lowGlo ;

void patch_low_glo_vm_page_info(void * start_addr, void * end_addr, uint32_t first_ppnum)
{
 lowGlo.lgPmapMemStartAddr = (uint32_t)start_addr;
 lowGlo.lgPmapMemEndAddr = (uint32_t)end_addr;
 lowGlo.lgPmapMemFirstppnum = first_ppnum;
}
