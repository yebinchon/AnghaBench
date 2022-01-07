
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; } ;
typedef TYPE_1__ list_node_t ;


 int assert (int ) ;

void *list_node(const list_node_t *node)
{
    assert(node != ((void*)0));
    return node->data;
}
