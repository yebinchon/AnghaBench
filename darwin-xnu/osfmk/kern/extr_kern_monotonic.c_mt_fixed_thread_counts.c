
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_4__ {int* mth_counts; int mth_gen; } ;
struct TYPE_5__ {TYPE_1__ t_monotonic; } ;


 int EAGAIN ;
 int EBUSY ;
 int MAXRETRIES ;
 int MAXSPINS ;
 int MT_CORE_NFIXED ;
 int atomic_load_explicit (int *,int ) ;
 int memory_order_acquire ;

int
mt_fixed_thread_counts(thread_t thread, uint64_t *counts_out)
{
 uint64_t start_gen, end_gen;
 uint64_t spins = 0, retries = 0;
 uint64_t counts[MT_CORE_NFIXED];
spin:
 start_gen = atomic_load_explicit(&thread->t_monotonic.mth_gen,
   memory_order_acquire);
retry:
 if (start_gen & 1) {
  spins++;
  if (spins > MAXSPINS) {
   return EBUSY;
  }
  goto spin;
 }

 for (int i = 0; i < MT_CORE_NFIXED; i++) {
  counts[i] = thread->t_monotonic.mth_counts[i];
 }
 end_gen = atomic_load_explicit(&thread->t_monotonic.mth_gen,
   memory_order_acquire);
 if (end_gen != start_gen) {
  retries++;
  if (retries > MAXRETRIES) {
   return EAGAIN;
  }
  start_gen = end_gen;
  goto retry;
 }





 for (int i = 0; i < MT_CORE_NFIXED; i++) {
  counts_out[i] = counts[i];
 }
 return 0;
}
