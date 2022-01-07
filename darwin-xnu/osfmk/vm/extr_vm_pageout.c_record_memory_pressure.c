
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_pageout_stat {int dummy; } ;
struct TYPE_5__ {scalar_t__ vm_memory_pressure; } ;
struct TYPE_4__ {scalar_t__ freed_external; scalar_t__ freed_internal; scalar_t__ freed_cleaned; scalar_t__ freed_speculative; } ;


 unsigned int VM_PAGEOUT_STAT_AFTER (unsigned int) ;
 size_t VM_PAGEOUT_STAT_BEFORE (unsigned int) ;
 int bzero (TYPE_1__*,int) ;
 int commpage_set_memory_pressure (unsigned int) ;
 int vm_page_buckets_check () ;
 int vm_page_buckets_check_interval ;
 unsigned int vm_pageout_stat_now ;
 TYPE_2__ vm_pageout_state ;
 TYPE_1__* vm_pageout_stats ;

void
record_memory_pressure(void)
{
 unsigned int vm_pageout_next;
 vm_pageout_state.vm_memory_pressure =
   vm_pageout_stats[VM_PAGEOUT_STAT_BEFORE(vm_pageout_stat_now)].freed_speculative +
   vm_pageout_stats[VM_PAGEOUT_STAT_BEFORE(vm_pageout_stat_now)].freed_cleaned +
   vm_pageout_stats[VM_PAGEOUT_STAT_BEFORE(vm_pageout_stat_now)].freed_internal +
   vm_pageout_stats[VM_PAGEOUT_STAT_BEFORE(vm_pageout_stat_now)].freed_external;

 commpage_set_memory_pressure( (unsigned int)vm_pageout_state.vm_memory_pressure );


 vm_pageout_next = VM_PAGEOUT_STAT_AFTER(vm_pageout_stat_now);

 bzero(&vm_pageout_stats[vm_pageout_next], sizeof(struct vm_pageout_stat));

 vm_pageout_stat_now = vm_pageout_next;
}
