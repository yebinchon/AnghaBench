
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfil_queue {int dummy; } ;
typedef int mbuf_t ;


 int MBUFQ_NEXT (int ) ;

__attribute__((used)) static mbuf_t
cfil_queue_next(struct cfil_queue *cfq, mbuf_t m)
{
#pragma unused(cfq)
 return (MBUFQ_NEXT(m));
}
