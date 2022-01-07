
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_link {int wqte; } ;


 int lt_elem_invalidate (int *) ;
 int wql_do_invalidate_stats (int *) ;

__attribute__((used)) static void wql_invalidate(struct waitq_link *link)
{
 lt_elem_invalidate(&link->wqte);
 wql_do_invalidate_stats(&link->wqte);
}
