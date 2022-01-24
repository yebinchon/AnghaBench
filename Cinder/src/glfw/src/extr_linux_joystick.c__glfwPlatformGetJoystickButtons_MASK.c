#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int buttonCount; unsigned char const* buttons; } ;
typedef  TYPE_2__ _GLFWjoystickLinux ;
struct TYPE_5__ {TYPE_2__* js; } ;
struct TYPE_7__ {TYPE_1__ linux_js; } ;

/* Variables and functions */
 TYPE_4__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

const unsigned char* FUNC1(int joy, int* count)
{
    _GLFWjoystickLinux* js = _glfw.linux_js.js + joy;
    if (!FUNC0(js))
        return NULL;

    *count = js->buttonCount;
    return js->buttons;
}