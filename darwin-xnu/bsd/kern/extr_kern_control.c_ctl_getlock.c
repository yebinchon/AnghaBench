
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {scalar_t__ so_usecount; TYPE_2__* so_proto; scalar_t__ so_pcb; } ;
struct ctl_cb {int * mtx; } ;
typedef int lck_mtx_t ;
struct TYPE_4__ {TYPE_1__* pr_domain; } ;
struct TYPE_3__ {int * dom_mtx; } ;


 int panic (char*,struct socket*,scalar_t__,...) ;
 int solockhistory_nr (struct socket*) ;

__attribute__((used)) static lck_mtx_t *
ctl_getlock(struct socket *so, int flags)
{
#pragma unused(flags)
 struct ctl_cb *kcb = (struct ctl_cb *)so->so_pcb;

 if (so->so_pcb) {
  if (so->so_usecount < 0)
   panic("ctl_getlock: so=%p usecount=%x lrh= %s\n",
       so, so->so_usecount, solockhistory_nr(so));
  return (kcb->mtx);
 } else {
  panic("ctl_getlock: so=%p NULL NO so_pcb %s\n",
      so, solockhistory_nr(so));
  return (so->so_proto->pr_domain->dom_mtx);
 }
}
