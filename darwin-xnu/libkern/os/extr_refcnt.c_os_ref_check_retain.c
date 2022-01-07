
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_refcnt {int dummy; } ;
typedef int os_ref_count_t ;


 int os_ref_assert_referenced (struct os_refcnt*,int ) ;
 int os_ref_check_overflow (struct os_refcnt*,int ) ;

__attribute__((used)) static void
os_ref_check_retain(struct os_refcnt *rc, os_ref_count_t count)
{
 os_ref_assert_referenced(rc, count);
 os_ref_check_overflow(rc, count);
}
