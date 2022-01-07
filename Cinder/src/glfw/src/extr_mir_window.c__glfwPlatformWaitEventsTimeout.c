
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {long tv_sec; long tv_nsec; } ;
struct TYPE_3__ {int event_mutex; int event_cond; int event_queue; } ;
struct TYPE_4__ {TYPE_1__ mir; } ;


 int CLOCK_REALTIME ;
 TYPE_2__ _glfw ;
 int _glfwPlatformPollEvents () ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ emptyEventQueue (int ) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void _glfwPlatformWaitEventsTimeout(double timeout)
{
    pthread_mutex_lock(&_glfw.mir.event_mutex);

    if (emptyEventQueue(_glfw.mir.event_queue))
    {
        struct timespec time;
        clock_gettime(CLOCK_REALTIME, &time);
        time.tv_sec += (long) timeout;
        time.tv_nsec += (long) ((timeout - (long) timeout) * 1e9);
        pthread_cond_timedwait(&_glfw.mir.event_cond, &_glfw.mir.event_mutex, &time);
    }

    pthread_mutex_unlock(&_glfw.mir.event_mutex);

    _glfwPlatformPollEvents();
}
