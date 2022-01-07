
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_refcnt; } ;


 int os_ref_retain (int *) ;

void
workq_reference(struct workqueue *wq)
{
 os_ref_retain(&wq->wq_refcnt);
}
