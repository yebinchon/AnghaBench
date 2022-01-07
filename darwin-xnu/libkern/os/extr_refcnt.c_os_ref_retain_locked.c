
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_refcnt {int ref_group; scalar_t__ ref_count; } ;
typedef scalar_t__ os_ref_count_t ;


 int REFLOG_RETAIN ;
 int os_ref_check_retain (struct os_refcnt*,scalar_t__) ;
 int ref_log_op (int ,void*,int ) ;
 int ref_retain_group (int ) ;

void
os_ref_retain_locked(struct os_refcnt *rc)
{
 os_ref_count_t val = rc->ref_count;
 os_ref_check_retain(rc, val);
 rc->ref_count = ++val;





}
