
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_link {int dummy; } ;
struct lt_elem {int dummy; } ;


 int g_wqlinktable ;
 int ltable_put_elem (int *,struct lt_elem*) ;

__attribute__((used)) static void wql_put_link(struct waitq_link *link)
{
 if (!link)
  return;
 ltable_put_elem(&g_wqlinktable, (struct lt_elem *)link);
}
