
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int head; } ;
typedef TYPE_1__ EventQueue ;


 int TAILQ_INIT (int *) ;

void _glfwInitEventQueue(EventQueue* queue)
{
    TAILQ_INIT(&queue->head);
}
