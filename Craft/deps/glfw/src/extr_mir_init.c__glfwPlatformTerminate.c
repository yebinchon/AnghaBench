
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connection; int event_mutex; int event_queue; } ;
struct TYPE_4__ {TYPE_1__ mir; } ;


 TYPE_2__ _glfw ;
 int _glfwDeleteEventQueue (int ) ;
 int _glfwTerminateContextAPI () ;
 int _glfwTerminateJoysticks () ;
 int mir_connection_release (int ) ;
 int pthread_mutex_destroy (int *) ;

void _glfwPlatformTerminate(void)
{
    _glfwTerminateContextAPI();
    _glfwTerminateJoysticks();

    _glfwDeleteEventQueue(_glfw.mir.event_queue);

    pthread_mutex_destroy(&_glfw.mir.event_mutex);

    mir_connection_release(_glfw.mir.connection);
}
