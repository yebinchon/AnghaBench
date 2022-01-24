#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct js_event {size_t number; scalar_t__ value; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  e ;
struct TYPE_8__ {float* axes; float* buttons; float* name; float* path; int /*<<< orphan*/  present; int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ _GLFWjoystickLinux ;
struct TYPE_7__ {int js; } ;
struct TYPE_9__ {TYPE_1__ linux_js; } ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 scalar_t__ ENODEV ; 
 int /*<<< orphan*/  GLFW_DISCONNECTED ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 float GLFW_PRESS ; 
 float GLFW_RELEASE ; 
 int /*<<< orphan*/  JS_EVENT_AXIS ; 
 int /*<<< orphan*/  JS_EVENT_BUTTON ; 
 int /*<<< orphan*/  JS_EVENT_INIT ; 
 TYPE_6__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct js_event*,int) ; 

__attribute__((used)) static GLFWbool FUNC5(_GLFWjoystickLinux* js)
{
#if defined(__linux__)
    FUNC1();

    if (!js->present)
        return GLFW_FALSE;

    // Read all queued events (non-blocking)
    for (;;)
    {
        struct js_event e;

        errno = 0;
        if (FUNC4(js->fd, &e, sizeof(e)) < 0)
        {
            // Reset the joystick slot if the device was disconnected
            if (errno == ENODEV)
            {
                FUNC2(js->axes);
                FUNC2(js->buttons);
                FUNC2(js->name);
                FUNC2(js->path);

                FUNC3(js, 0, sizeof(_GLFWjoystickLinux));

                FUNC0(js - _glfw.linux_js.js,
                                         GLFW_DISCONNECTED);
            }

            break;
        }

        // Clear the initial-state bit
        e.type &= ~JS_EVENT_INIT;

        if (e.type == JS_EVENT_AXIS)
            js->axes[e.number] = (float) e.value / 32767.0f;
        else if (e.type == JS_EVENT_BUTTON)
            js->buttons[e.number] = e.value ? GLFW_PRESS : GLFW_RELEASE;
    }
#endif // __linux__
    return js->present;
}