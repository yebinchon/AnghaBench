
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wq_prepost {int wqte; } ;


 int g_prepost_table ;
 int lt_elem_list_link (int *,int *,int *) ;

__attribute__((used)) static int wq_prepost_rlink(struct wq_prepost *parent, struct wq_prepost *child)
{
 return lt_elem_list_link(&g_prepost_table, &parent->wqte, &child->wqte);
}
