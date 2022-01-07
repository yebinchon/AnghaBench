
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct mt_cpu {scalar_t__* mtc_snaps; } ;


 int atomic_fetch_add_explicit (int *,int,int ) ;
 int cpu_number () ;
 int current_thread () ;
 int kprintf (char*,int ,int ,unsigned int,scalar_t__,scalar_t__) ;
 int memory_order_relaxed ;
 scalar_t__ mt_core_snap (unsigned int) ;
 scalar_t__ mt_debug ;
 int mt_retrograde ;
 int thread_tid (int ) ;

uint64_t
mt_mtc_update_count(struct mt_cpu *mtc, unsigned int ctr)
{
 uint64_t snap = mt_core_snap(ctr);
 if (snap < mtc->mtc_snaps[ctr]) {
  if (mt_debug) {
   kprintf("monotonic: cpu %d: thread %#llx: "
     "retrograde counter %u value: %llu, last read = %llu\n",
     cpu_number(), thread_tid(current_thread()), ctr, snap,
     mtc->mtc_snaps[ctr]);
  }
  (void)atomic_fetch_add_explicit(&mt_retrograde, 1,
    memory_order_relaxed);
  mtc->mtc_snaps[ctr] = snap;
  return 0;
 }

 uint64_t count = snap - mtc->mtc_snaps[ctr];
 mtc->mtc_snaps[ctr] = snap;

 return count;
}
