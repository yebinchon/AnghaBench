#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  objects; int /*<<< orphan*/  buttons; int /*<<< orphan*/  axes; int /*<<< orphan*/  name; scalar_t__ device; } ;
typedef  TYPE_1__ _GLFWjoystickWin32 ;
struct TYPE_6__ {TYPE_1__* win32_js; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(_GLFWjoystickWin32* js)
{
    if (js->device)
    {
        FUNC1(js->device);
        FUNC0(js->device);
    }

    FUNC3(js->name);
    FUNC3(js->axes);
    FUNC3(js->buttons);
    FUNC3(js->objects);
    FUNC4(js, 0, sizeof(_GLFWjoystickWin32));

    FUNC2((int) (js - _glfw.win32_js), GLFW_DISCONNECTED);
}