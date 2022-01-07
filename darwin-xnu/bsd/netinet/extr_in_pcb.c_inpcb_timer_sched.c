
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int intimer_lazy; int intimer_fast; int intimer_nodelay; } ;
struct inpcbinfo {TYPE_1__ ipi_timer_req; } ;




 int TRUE ;
 int atomic_add_32 (int *,int) ;
 int inpcb_sched_lazy_timeout () ;
 int inpcb_sched_timeout () ;
 int inpcb_ticking ;
 int inpcb_timeout_lock ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;

void
inpcb_timer_sched(struct inpcbinfo *ipi, u_int32_t type)
{

 lck_mtx_lock_spin(&inpcb_timeout_lock);
 inpcb_ticking = TRUE;
 switch (type) {
 case 128:
  atomic_add_32(&ipi->ipi_timer_req.intimer_nodelay, 1);
  inpcb_sched_timeout();
  break;
 case 129:
  atomic_add_32(&ipi->ipi_timer_req.intimer_fast, 1);
  inpcb_sched_timeout();
  break;
 default:
  atomic_add_32(&ipi->ipi_timer_req.intimer_lazy, 1);
  inpcb_sched_lazy_timeout();
  break;
 }
 lck_mtx_unlock(&inpcb_timeout_lock);
}
