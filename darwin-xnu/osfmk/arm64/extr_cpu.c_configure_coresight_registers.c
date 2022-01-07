
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {scalar_t__* coresight_base; scalar_t__ cpu_regmap_paddr; } ;
typedef TYPE_1__ cpu_data_t ;


 int ARM_DBG_LOCK_ACCESS_KEY ;
 scalar_t__ ARM_DEBUG_OFFSET_DBGLAR ;
 int CORESIGHT_CTI ;
 int CORESIGHT_ED ;
 scalar_t__ CORESIGHT_OFFSET (int) ;
 int CORESIGHT_REGIONS ;
 int CORESIGHT_SIZE ;
 int CORESIGHT_UTT ;
 int assert (TYPE_1__*) ;
 int coresight_debug_enabled ;
 scalar_t__ ml_io_map (scalar_t__,int ) ;
 int panic (char*) ;

__attribute__((used)) static void
configure_coresight_registers(cpu_data_t *cdp)
{
 uint64_t addr;
 int i;

 assert(cdp);






 if (cdp->cpu_regmap_paddr) {
  for (i = 0; i < CORESIGHT_REGIONS; ++i) {







   if (i == CORESIGHT_CTI)
    continue;

   if (((i == CORESIGHT_ED) || (i == CORESIGHT_UTT)) && !coresight_debug_enabled)
    continue;

   if (!cdp->coresight_base[i]) {
    addr = cdp->cpu_regmap_paddr + CORESIGHT_OFFSET(i);
    cdp->coresight_base[i] = (vm_offset_t)ml_io_map(addr, CORESIGHT_SIZE);





    if (!cdp->coresight_base[i]) {
     panic("unable to ml_io_map coresight regions");
    }
   }

   if (i != CORESIGHT_UTT)
    *(volatile uint32_t *)(cdp->coresight_base[i] + ARM_DEBUG_OFFSET_DBGLAR) = ARM_DBG_LOCK_ACCESS_KEY;
  }
 }
}
