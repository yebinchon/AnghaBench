
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wq_prepost {int dummy; } ;
struct lt_elem {int dummy; } ;


 int g_prepost_table ;
 int ltable_put_elem (int *,struct lt_elem*) ;

__attribute__((used)) static void wq_prepost_put(struct wq_prepost *wqp)
{
 ltable_put_elem(&g_prepost_table, (struct lt_elem *)wqp);
}
