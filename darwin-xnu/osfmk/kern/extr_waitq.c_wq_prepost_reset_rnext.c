
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wq_prepost {int wqte; } ;


 int g_prepost_table ;
 int lt_elem_list_break (int *,int *) ;

__attribute__((used)) static void wq_prepost_reset_rnext(struct wq_prepost *wqp)
{
 (void)lt_elem_list_break(&g_prepost_table, &wqp->wqte);
}
