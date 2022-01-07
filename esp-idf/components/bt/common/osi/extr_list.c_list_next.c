
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ list_node_t ;


 int assert (int ) ;

list_node_t *list_next(const list_node_t *node)
{
    assert(node != ((void*)0));
    return node->next;
}
