
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct dtrace_ptss_page* p_dtrace_ptss_pages; int p_mlock; int p_dtrace_sprlock; } ;
struct dtrace_ptss_page {struct dtrace_ptss_page* next; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_ptss_free_page (struct proc*,struct dtrace_ptss_page*) ;

void
dtrace_ptss_fork(struct proc* parent, struct proc* child) {
 LCK_MTX_ASSERT(&parent->p_dtrace_sprlock, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&parent->p_mlock, LCK_MTX_ASSERT_NOTOWNED);
 LCK_MTX_ASSERT(&child->p_dtrace_sprlock, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&child->p_mlock, LCK_MTX_ASSERT_NOTOWNED);


 struct dtrace_ptss_page* temp = parent->p_dtrace_ptss_pages;

 while (temp != ((void*)0)) {

  dtrace_ptss_free_page(child, temp);


  temp = temp->next;
 }
}
