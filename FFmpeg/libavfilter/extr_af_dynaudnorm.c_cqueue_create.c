
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int elements; scalar_t__ first; scalar_t__ nb_elements; } ;
typedef TYPE_1__ cqueue ;


 int av_free (TYPE_1__*) ;
 TYPE_1__* av_malloc (int) ;
 int av_malloc_array (int,int) ;

__attribute__((used)) static cqueue *cqueue_create(int size)
{
    cqueue *q;

    q = av_malloc(sizeof(cqueue));
    if (!q)
        return ((void*)0);

    q->size = size;
    q->nb_elements = 0;
    q->first = 0;

    q->elements = av_malloc_array(size, sizeof(double));
    if (!q->elements) {
        av_free(q);
        return ((void*)0);
    }

    return q;
}
