
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {int waitq_irq; } ;



int waitq_irq_safe(struct waitq *waitq)
{

 return waitq->waitq_irq;
}
