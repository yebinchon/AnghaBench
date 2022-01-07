
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct waitq_link {int dummy; } ;
struct lt_elem {int dummy; } ;


 int g_wqlinktable ;
 struct lt_elem* lt_elem_list_first (int *,int ) ;
 int ltable_realloc_elem (int *,struct lt_elem*,int) ;

__attribute__((used)) static struct waitq_link *wql_get_reserved(uint64_t setid, int type)
{
 struct lt_elem *elem;

 elem = lt_elem_list_first(&g_wqlinktable, setid);
 if (!elem)
  return ((void*)0);
 ltable_realloc_elem(&g_wqlinktable, elem, type);
 return (struct waitq_link *)elem;
}
