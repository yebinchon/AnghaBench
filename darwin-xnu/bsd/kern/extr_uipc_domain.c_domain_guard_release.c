
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ net_thread_marks_t ;
typedef scalar_t__ domain_guard_t ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LCK_MTX_ASSERT_OWNED ;
 int domain_proto_mtx ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ net_thread_marks_none ;
 int net_thread_marks_pop (scalar_t__) ;

void
domain_guard_release(domain_guard_t guard)
{
 net_thread_marks_t marks = (net_thread_marks_t)(const void*)guard;

 if (marks != net_thread_marks_none) {
  LCK_MTX_ASSERT(&domain_proto_mtx, LCK_MTX_ASSERT_OWNED);
  lck_mtx_unlock(&domain_proto_mtx);
  net_thread_marks_pop(marks);
 }
 else
  LCK_MTX_ASSERT(&domain_proto_mtx, LCK_MTX_ASSERT_NOTOWNED);
}
