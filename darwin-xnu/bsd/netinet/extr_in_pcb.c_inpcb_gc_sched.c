
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {scalar_t__ intimer_nodelay; scalar_t__ intimer_fast; scalar_t__ intimer_lazy; } ;
struct inpcbinfo {TYPE_1__ ipi_gc_req; } ;


 scalar_t__ INPCB_GCREQ_THRESHOLD ;


 int TRUE ;
 int atomic_add_32 (scalar_t__*,int) ;
 int inpcb_garbage_collecting ;
 int inpcb_sched_lazy_timeout () ;
 int inpcb_sched_timeout () ;
 int inpcb_timeout_lock ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;

void
inpcb_gc_sched(struct inpcbinfo *ipi, u_int32_t type)
{
 u_int32_t gccnt;

 lck_mtx_lock_spin(&inpcb_timeout_lock);
 inpcb_garbage_collecting = TRUE;
 gccnt = ipi->ipi_gc_req.intimer_nodelay +
  ipi->ipi_gc_req.intimer_fast;

 if (gccnt > INPCB_GCREQ_THRESHOLD) {
  type = 129;
 }

 switch (type) {
 case 128:
  atomic_add_32(&ipi->ipi_gc_req.intimer_nodelay, 1);
  inpcb_sched_timeout();
  break;
 case 129:
  atomic_add_32(&ipi->ipi_gc_req.intimer_fast, 1);
  inpcb_sched_timeout();
  break;
 default:
  atomic_add_32(&ipi->ipi_gc_req.intimer_lazy, 1);
  inpcb_sched_lazy_timeout();
  break;
 }
 lck_mtx_unlock(&inpcb_timeout_lock);
}
