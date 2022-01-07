
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int dummy; } ;
struct proc {int p_wqptr; } ;


 struct workqueue* os_atomic_load (int *,int ) ;
 int relaxed ;

__attribute__((used)) static struct workqueue *
proc_get_wqptr_fast(struct proc *p)
{
 return os_atomic_load(&p->p_wqptr, relaxed);
}
