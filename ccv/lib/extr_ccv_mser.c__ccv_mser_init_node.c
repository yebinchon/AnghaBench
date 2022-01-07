
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; } ;
struct TYPE_5__ {int root; TYPE_1__ point; struct TYPE_5__* shortcut; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_2__ ccv_mser_node_t ;



__attribute__((used)) static void _ccv_mser_init_node(ccv_mser_node_t* node, int x, int y)
{
 node->prev = node->next = node->shortcut = node;
 node->point.x = x;
 node->point.y = y;
 node->root = -1;
}
