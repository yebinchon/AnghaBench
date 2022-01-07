
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_link {int dummy; } ;
struct lt_elem {int dummy; } ;


 int g_wqlinktable ;
 struct lt_elem* ltable_alloc_elem (int *,int,int,int ) ;
 int wql_do_alloc_stats (struct lt_elem*) ;

__attribute__((used)) static struct waitq_link *wql_alloc_link(int type)
{
 struct lt_elem *elem;

 elem = ltable_alloc_elem(&g_wqlinktable, type, 1, 0);
 wql_do_alloc_stats(elem);
 return (struct waitq_link *)elem;
}
