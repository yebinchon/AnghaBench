
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_output {int dummy; } ;
struct TYPE_2__ {int done; } ;
struct _GLFWmonitor {TYPE_1__ wl; } ;


 int GLFW_TRUE ;

__attribute__((used)) static void done(void* data,
                 struct wl_output* output)
{
    struct _GLFWmonitor *monitor = data;

    monitor->wl.done = GLFW_TRUE;
}
