
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_store_explicit (int *,int,int ) ;
 int cpu_flags ;
 int get_cpu_flags () ;
 int memory_order_relaxed ;

void av_set_cpu_flags_mask(int mask)
{
    atomic_store_explicit(&cpu_flags, get_cpu_flags() & mask,
                          memory_order_relaxed);
}
