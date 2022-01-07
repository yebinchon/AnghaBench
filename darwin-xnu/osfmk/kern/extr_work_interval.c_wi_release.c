
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct work_interval {int wi_ref_count; } ;


 int assert (int) ;
 int atomic_fetch_sub_explicit (int *,int,int ) ;
 int kfree (struct work_interval*,int) ;
 int memory_order_relaxed ;

__attribute__((used)) static inline void
wi_release(struct work_interval *work_interval)
{
 uint32_t old_count;
 old_count = atomic_fetch_sub_explicit(&work_interval->wi_ref_count,
                                       1, memory_order_relaxed);
 assert(old_count > 0);

 if (old_count == 1) {


  kfree(work_interval, sizeof(struct work_interval));
 }
}
