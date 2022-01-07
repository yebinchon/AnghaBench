
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct work_interval {int wi_ref_count; } ;


 int assert (int) ;
 scalar_t__ atomic_fetch_add_explicit (int *,int,int ) ;
 int memory_order_relaxed ;

__attribute__((used)) static inline void
wi_retain(struct work_interval *work_interval)
{
 uint32_t old_count;
 old_count = atomic_fetch_add_explicit(&work_interval->wi_ref_count,
                                       1, memory_order_relaxed);
 assert(old_count > 0);
}
