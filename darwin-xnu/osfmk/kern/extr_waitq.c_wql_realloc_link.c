
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_link {scalar_t__ sl_invalidate_ts; int sl_invalidate_bt; int wqte; scalar_t__ sl_alloc_ts; int sl_alloc_bt; } ;


 int g_wqlinktable ;
 int ltable_realloc_elem (int *,int *,int) ;
 int memset (int ,int ,int) ;
 int wql_do_alloc_stats (int *) ;

__attribute__((used)) static void wql_realloc_link(struct waitq_link *link, int type)
{
 ltable_realloc_elem(&g_wqlinktable, &link->wqte, type);
}
