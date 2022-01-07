
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_refcnt {int ref_group; int ref_count; } ;
typedef int os_ref_count_t ;


 int REFLOG_RETAIN ;
 int atomic_fetch_add_explicit (int *,int,int ) ;
 int memory_order_relaxed ;
 int os_ref_check_retain (struct os_refcnt*,int ) ;
 int ref_log_op (int ,void*,int ) ;
 int ref_retain_group (int ) ;

void
os_ref_retain(struct os_refcnt *rc)
{
 os_ref_count_t old = atomic_fetch_add_explicit(&rc->ref_count, 1, memory_order_relaxed);
 os_ref_check_retain(rc, old);





}
