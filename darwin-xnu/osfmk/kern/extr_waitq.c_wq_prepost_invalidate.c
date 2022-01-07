
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wq_prepost {int wqte; } ;


 int lt_elem_invalidate (int *) ;

__attribute__((used)) static void wq_prepost_invalidate(struct wq_prepost *wqp)
{
 lt_elem_invalidate(&wqp->wqte);
}
