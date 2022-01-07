
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct waitq_link {int dummy; } ;
struct lt_elem {int dummy; } ;


 int g_wqlinktable ;
 struct lt_elem* ltable_get_elem (int *,int ) ;

__attribute__((used)) static struct waitq_link *wql_get_link(uint64_t setid)
{
 struct lt_elem *elem;

 elem = ltable_get_elem(&g_wqlinktable, setid);
 return (struct waitq_link *)elem;
}
