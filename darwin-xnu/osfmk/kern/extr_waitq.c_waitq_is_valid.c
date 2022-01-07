
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq {scalar_t__ waitq_isvalid; } ;



int waitq_is_valid(struct waitq *waitq)
{
 return (waitq != ((void*)0)) && waitq->waitq_isvalid;
}
