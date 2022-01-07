
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * head; } ;
typedef TYPE_1__ list_t ;
typedef int list_node_t ;


 int assert (int ) ;

list_node_t *list_begin(const list_t *list)
{
    assert(list != ((void*)0));
    return list->head;
}
