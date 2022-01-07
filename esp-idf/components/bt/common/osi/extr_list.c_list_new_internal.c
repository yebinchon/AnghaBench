
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int free_cb; scalar_t__ length; int * tail; int head; } ;
typedef TYPE_1__ list_t ;
typedef int list_free_cb ;


 scalar_t__ osi_calloc (int) ;

list_t *list_new_internal(list_free_cb callback)
{
    list_t *list = (list_t *) osi_calloc(sizeof(list_t));
    if (!list) {
        return ((void*)0);
    }

    list->head = list->tail = ((void*)0);
    list->length = 0;
    list->free_cb = callback;
    return list;
}
