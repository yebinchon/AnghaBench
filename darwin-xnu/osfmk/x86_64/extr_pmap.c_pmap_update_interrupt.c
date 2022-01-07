
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpu_tlb_invalid; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PMAP_CODE (int ) ;
 int PMAP_TRACE (int) ;
 int PMAP__UPDATE_INTERRUPT ;
 TYPE_1__* current_cpu_datap () ;
 int process_pmap_updates () ;

void
pmap_update_interrupt(void)
{
        PMAP_TRACE(PMAP_CODE(PMAP__UPDATE_INTERRUPT) | DBG_FUNC_START);

 if (current_cpu_datap()->cpu_tlb_invalid)
  process_pmap_updates();

        PMAP_TRACE(PMAP_CODE(PMAP__UPDATE_INTERRUPT) | DBG_FUNC_END);
}
