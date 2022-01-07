
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* tqh_first; } ;
struct TYPE_10__ {TYPE_3__* tqe_next; } ;
struct TYPE_12__ {TYPE_1__ entries; } ;
struct TYPE_11__ {TYPE_8__ head; } ;
typedef TYPE_2__ EventQueue ;
typedef TYPE_3__ EventNode ;


 int TAILQ_REMOVE (TYPE_8__*,TYPE_3__*,int ) ;
 int deleteNode (TYPE_2__*,TYPE_3__*) ;
 int entries ;
 int free (TYPE_2__*) ;

void _glfwDeleteEventQueue(EventQueue* queue)
{
    if (queue)
    {
        EventNode* node, *node_next;
        node = queue->head.tqh_first;

        while (node != ((void*)0))
        {
            node_next = node->entries.tqe_next;

            TAILQ_REMOVE(&queue->head, node, entries);
            deleteNode(queue, node);

            node = node_next;
        }

        free(queue);
    }
}
