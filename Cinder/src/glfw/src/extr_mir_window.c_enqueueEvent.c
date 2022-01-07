
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int _GLFWwindow ;
struct TYPE_5__ {int event_mutex; int event_cond; TYPE_1__* event_queue; } ;
struct TYPE_6__ {TYPE_2__ mir; } ;
struct TYPE_4__ {int head; } ;
typedef int MirEvent ;
typedef int EventNode ;


 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 TYPE_3__ _glfw ;
 int entries ;
 int * newEventNode (int const*,int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void enqueueEvent(const MirEvent* event, _GLFWwindow* context)
{
    pthread_mutex_lock(&_glfw.mir.event_mutex);

    EventNode* new_node = newEventNode(event, context);
    TAILQ_INSERT_TAIL(&_glfw.mir.event_queue->head, new_node, entries);

    pthread_cond_signal(&_glfw.mir.event_cond);

    pthread_mutex_unlock(&_glfw.mir.event_mutex);
}
