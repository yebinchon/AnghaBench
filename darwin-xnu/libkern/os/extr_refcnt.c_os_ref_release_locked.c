
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_refcnt {scalar_t__ ref_count; int ref_group; } ;
typedef scalar_t__ os_ref_count_t ;


 int REFLOG_RELEASE ;
 int os_ref_check_underflow (struct os_refcnt*,scalar_t__) ;
 int ref_log_drop (int ,void*) ;
 int ref_log_op (int ,void*,int ) ;
 int ref_release_group (int ,int) ;

os_ref_count_t
os_ref_release_locked(struct os_refcnt *rc)
{
 os_ref_count_t val = rc->ref_count;
 os_ref_check_underflow(rc, val);
 rc->ref_count = --val;
 return val;
}
