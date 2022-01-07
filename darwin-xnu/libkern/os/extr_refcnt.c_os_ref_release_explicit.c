
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_refgrp {int dummy; } ;
struct os_refcnt {int ref_count; struct os_refgrp* ref_group; } ;
typedef scalar_t__ os_ref_count_t ;
typedef int memory_order ;


 int REFLOG_RELEASE ;
 scalar_t__ __improbable (int) ;
 scalar_t__ atomic_fetch_sub_explicit (int *,int,int ) ;
 int atomic_load_explicit (int *,int ) ;
 int os_ref_check_underflow (struct os_refcnt*,scalar_t__) ;
 int ref_log_drop (struct os_refgrp*,void*) ;
 int ref_log_op (struct os_refgrp*,void*,int ) ;
 int ref_release_group (struct os_refgrp*,int) ;

os_ref_count_t
os_ref_release_explicit(struct os_refcnt *rc, memory_order release_order, memory_order dealloc_order)
{
 os_ref_count_t val = atomic_fetch_sub_explicit(&rc->ref_count, 1, release_order);
 os_ref_check_underflow(rc, val);
 if (__improbable(--val == 0)) {
  atomic_load_explicit(&rc->ref_count, dealloc_order);



 }





 return val;
}
