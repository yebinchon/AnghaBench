
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_refcnt {int ref_count; } ;
typedef int os_ref_count_t ;


 int atomic_load_explicit (int *,int ) ;
 int memory_order_relaxed ;

__attribute__((used)) static inline os_ref_count_t
os_ref_get_count(struct os_refcnt *rc)
{
 return atomic_load_explicit(&rc->ref_count, memory_order_relaxed);
}
