
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_signals; } ;


 int DBGLOG (int ,int ,int ) ;
 scalar_t__ FALSE ;
 int MP_TLB_FLUSH ;
 int cpu_handle ;
 int cpu_number () ;
 TYPE_1__* current_cpu_datap () ;
 scalar_t__ i_bit (int ,int volatile*) ;
 int i_bit_clear (int ,int volatile*) ;
 scalar_t__ pmap_tlb_flush_timeout ;
 int pmap_update_interrupt () ;

void
handle_pending_TLB_flushes(void)
{
 volatile int *my_word = &current_cpu_datap()->cpu_signals;

 if (i_bit(MP_TLB_FLUSH, my_word) && (pmap_tlb_flush_timeout == FALSE)) {
  DBGLOG(cpu_handle, cpu_number(), MP_TLB_FLUSH);
  i_bit_clear(MP_TLB_FLUSH, my_word);
  pmap_update_interrupt();
 }
}
