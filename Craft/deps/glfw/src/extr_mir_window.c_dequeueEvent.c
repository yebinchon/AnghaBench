
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * tqh_first; } ;
struct TYPE_6__ {int event_mutex; } ;
struct TYPE_8__ {TYPE_1__ mir; } ;
struct TYPE_7__ {TYPE_5__ head; } ;
typedef TYPE_2__ EventQueue ;
typedef int EventNode ;


 int TAILQ_REMOVE (TYPE_5__*,int *,int ) ;
 TYPE_4__ _glfw ;
 int entries ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static EventNode* dequeueEvent(EventQueue* queue)
{
    EventNode* node = ((void*)0);

    pthread_mutex_lock(&_glfw.mir.event_mutex);

    node = queue->head.tqh_first;

    if (node)
        TAILQ_REMOVE(&queue->head, node, entries);

    pthread_mutex_unlock(&_glfw.mir.event_mutex);

    return node;
}
