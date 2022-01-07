
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct js_event {size_t number; scalar_t__ value; int type; } ;
typedef int e ;
struct TYPE_8__ {float* axes; float* buttons; float* name; float* path; int present; int fd; } ;
typedef TYPE_2__ _GLFWjoystickLinux ;
struct TYPE_7__ {int js; } ;
struct TYPE_9__ {TYPE_1__ linux_js; } ;
typedef int GLFWbool ;


 scalar_t__ ENODEV ;
 int GLFW_DISCONNECTED ;
 int GLFW_FALSE ;
 float GLFW_PRESS ;
 float GLFW_RELEASE ;
 int JS_EVENT_AXIS ;
 int JS_EVENT_BUTTON ;
 int JS_EVENT_INIT ;
 TYPE_6__ _glfw ;
 int _glfwInputJoystickChange (TYPE_2__*,int ) ;
 int _glfwPollJoystickEvents () ;
 scalar_t__ errno ;
 int free (float*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ read (int ,struct js_event*,int) ;

__attribute__((used)) static GLFWbool pollJoystickEvents(_GLFWjoystickLinux* js)
{

    _glfwPollJoystickEvents();

    if (!js->present)
        return GLFW_FALSE;


    for (;;)
    {
        struct js_event e;

        errno = 0;
        if (read(js->fd, &e, sizeof(e)) < 0)
        {

            if (errno == ENODEV)
            {
                free(js->axes);
                free(js->buttons);
                free(js->name);
                free(js->path);

                memset(js, 0, sizeof(_GLFWjoystickLinux));

                _glfwInputJoystickChange(js - _glfw.linux_js.js,
                                         GLFW_DISCONNECTED);
            }

            break;
        }


        e.type &= ~JS_EVENT_INIT;

        if (e.type == JS_EVENT_AXIS)
            js->axes[e.number] = (float) e.value / 32767.0f;
        else if (e.type == JS_EVENT_BUTTON)
            js->buttons[e.number] = e.value ? GLFW_PRESS : GLFW_RELEASE;
    }

    return js->present;
}
