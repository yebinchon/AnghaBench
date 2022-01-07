
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct wq_prepost {int dummy; } ;
struct lt_elem {int dummy; } ;


 int g_prepost_table ;
 struct lt_elem* lt_elem_list_pop (int *,int *,int) ;
 int wqp_do_alloc_stats (struct lt_elem*) ;

__attribute__((used)) static struct wq_prepost *wq_prepost_rpop(uint64_t *id, int type)
{
 struct lt_elem *elem;
 elem = lt_elem_list_pop(&g_prepost_table, id, type);
 wqp_do_alloc_stats(elem);
 return (struct wq_prepost *)(void *)elem;
}
