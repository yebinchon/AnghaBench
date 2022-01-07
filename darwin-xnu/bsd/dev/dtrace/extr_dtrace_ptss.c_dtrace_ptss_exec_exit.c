
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct dtrace_ptss_page* p_dtrace_ptss_pages; int * p_dtrace_ptss_free_list; int p_mlock; int p_dtrace_sprlock; } ;
struct dtrace_ptss_page {struct dtrace_ptss_page* next; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LCK_MTX_ASSERT_OWNED ;
 int M_TEMP ;
 int _FREE (struct dtrace_ptss_page*,int ) ;

void
dtrace_ptss_exec_exit(struct proc* p) {




 LCK_MTX_ASSERT(&p->p_dtrace_sprlock, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&p->p_mlock, LCK_MTX_ASSERT_NOTOWNED);

 p->p_dtrace_ptss_free_list = ((void*)0);

 struct dtrace_ptss_page* temp = p->p_dtrace_ptss_pages;
 p->p_dtrace_ptss_pages = ((void*)0);

 while (temp != ((void*)0)) {
  struct dtrace_ptss_page* next = temp->next;






  _FREE(temp, M_TEMP);
  temp = next;
 }
}
