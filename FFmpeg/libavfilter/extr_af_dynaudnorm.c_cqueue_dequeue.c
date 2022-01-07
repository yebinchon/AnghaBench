
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double* elements; size_t first; int size; int nb_elements; } ;
typedef TYPE_1__ cqueue ;


 int av_assert2 (int) ;
 int cqueue_empty (TYPE_1__*) ;

__attribute__((used)) static int cqueue_dequeue(cqueue *q, double *element)
{
    av_assert2(!cqueue_empty(q));

    *element = q->elements[q->first];
    q->first = (q->first + 1) % q->size;
    q->nb_elements--;

    return 0;
}
