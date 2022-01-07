
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ inotify; scalar_t__ watch; int regex; TYPE_1__* js; } ;
struct TYPE_6__ {TYPE_2__ linux_js; } ;
struct TYPE_4__ {scalar_t__ fd; int path; int name; int buttons; int axes; scalar_t__ present; } ;


 int GLFW_JOYSTICK_LAST ;
 TYPE_3__ _glfw ;
 int close (scalar_t__) ;
 int free (int ) ;
 int inotify_rm_watch (scalar_t__,scalar_t__) ;
 int regfree (int *) ;

void _glfwTerminateJoysticks(void)
{

    int i;

    for (i = 0; i <= GLFW_JOYSTICK_LAST; i++)
    {
        if (_glfw.linux_js.js[i].present)
        {
            close(_glfw.linux_js.js[i].fd);
            free(_glfw.linux_js.js[i].axes);
            free(_glfw.linux_js.js[i].buttons);
            free(_glfw.linux_js.js[i].name);
            free(_glfw.linux_js.js[i].path);
        }
    }

    regfree(&_glfw.linux_js.regex);

    if (_glfw.linux_js.inotify > 0)
    {
        if (_glfw.linux_js.watch > 0)
            inotify_rm_watch(_glfw.linux_js.inotify, _glfw.linux_js.watch);

        close(_glfw.linux_js.inotify);
    }

}
