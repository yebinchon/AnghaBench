
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_mutex; int event_cond; int event_queue; } ;
struct TYPE_4__ {TYPE_1__ mir; } ;


 TYPE_2__ _glfw ;
 int _glfwPlatformPollEvents () ;
 scalar_t__ emptyEventQueue (int ) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void _glfwPlatformWaitEvents(void)
{
    pthread_mutex_lock(&_glfw.mir.event_mutex);

    if (emptyEventQueue(_glfw.mir.event_queue))
        pthread_cond_wait(&_glfw.mir.event_cond, &_glfw.mir.event_mutex);

    pthread_mutex_unlock(&_glfw.mir.event_mutex);

    _glfwPlatformPollEvents();
}
