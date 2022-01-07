
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ net_thread_marks_t ;
typedef scalar_t__ domain_unguard_t ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LCK_MTX_ASSERT_OWNED ;
 int domain_proto_mtx ;
 int lck_mtx_lock (int *) ;
 scalar_t__ net_thread_marks_none ;
 int net_thread_unmarks_pop (scalar_t__) ;

void
domain_unguard_release(domain_unguard_t unguard)
{
 net_thread_marks_t marks = (net_thread_marks_t)(const void*)unguard;

 if (marks != net_thread_marks_none) {
  LCK_MTX_ASSERT(&domain_proto_mtx, LCK_MTX_ASSERT_NOTOWNED);
  lck_mtx_lock(&domain_proto_mtx);
  net_thread_unmarks_pop(marks);
 }
 else
  LCK_MTX_ASSERT(&domain_proto_mtx, LCK_MTX_ASSERT_OWNED);
}
