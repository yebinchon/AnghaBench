
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct wq_prepost {int dummy; } ;
struct lt_elem {int dummy; } ;


 int g_prepost_table ;
 struct lt_elem* ltable_get_elem (int *,int ) ;

__attribute__((used)) static struct wq_prepost *wq_prepost_get(uint64_t wqp_id)
{
 struct lt_elem *elem;

 elem = ltable_get_elem(&g_prepost_table, wqp_id);
 return (struct wq_prepost *)elem;
}
