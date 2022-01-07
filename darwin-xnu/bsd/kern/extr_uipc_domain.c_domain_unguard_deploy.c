
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ net_thread_marks_t ;
typedef int domain_unguard_t ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LCK_MTX_ASSERT_OWNED ;
 int NET_THREAD_HELD_DOMAIN ;
 int domain_proto_mtx ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ net_thread_marks_none ;
 scalar_t__ net_thread_unmarks_push (int ) ;

domain_unguard_t
domain_unguard_deploy(void)
{
 net_thread_marks_t marks;

 marks = net_thread_unmarks_push(NET_THREAD_HELD_DOMAIN);
 if (marks != net_thread_marks_none) {
  LCK_MTX_ASSERT(&domain_proto_mtx, LCK_MTX_ASSERT_OWNED);
  lck_mtx_unlock(&domain_proto_mtx);
 }
 else
  LCK_MTX_ASSERT(&domain_proto_mtx, LCK_MTX_ASSERT_NOTOWNED);

 return ((domain_unguard_t)(const void*)marks);
}
