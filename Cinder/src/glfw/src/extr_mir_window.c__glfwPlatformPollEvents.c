
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int event_queue; } ;
struct TYPE_8__ {TYPE_1__ mir; } ;
struct TYPE_7__ {int window; int event; } ;
typedef TYPE_2__ EventNode ;


 TYPE_5__ _glfw ;
 int deleteNode (int ,TYPE_2__*) ;
 TYPE_2__* dequeueEvent (int ) ;
 int handleEvent (int ,int ) ;

void _glfwPlatformPollEvents(void)
{
    EventNode* node = ((void*)0);

    while ((node = dequeueEvent(_glfw.mir.event_queue)))
    {
        handleEvent(node->event, node->window);
        deleteNode(_glfw.mir.event_queue, node);
    }
}
