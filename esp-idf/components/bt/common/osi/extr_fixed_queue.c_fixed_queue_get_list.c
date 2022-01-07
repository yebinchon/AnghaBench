
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int list_t ;
struct TYPE_3__ {int * list; } ;
typedef TYPE_1__ fixed_queue_t ;


 int assert (int ) ;

list_t *fixed_queue_get_list(fixed_queue_t *queue)
{
    assert(queue != ((void*)0));



    return queue->list;
}
