
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_elements; } ;
typedef TYPE_1__ cqueue ;



__attribute__((used)) static int cqueue_empty(cqueue *q)
{
    return !q->nb_elements;
}
