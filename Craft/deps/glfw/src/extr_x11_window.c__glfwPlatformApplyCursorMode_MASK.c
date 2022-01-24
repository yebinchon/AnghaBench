#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int cursorMode; } ;
typedef  TYPE_1__ _GLFWwindow ;

/* Variables and functions */
#define  GLFW_CURSOR_DISABLED 130 
#define  GLFW_CURSOR_HIDDEN 129 
#define  GLFW_CURSOR_NORMAL 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(_GLFWwindow* window)
{
    switch (window->cursorMode)
    {
        case GLFW_CURSOR_NORMAL:
            FUNC2(window);
            break;
        case GLFW_CURSOR_HIDDEN:
            FUNC1(window);
            break;
        case GLFW_CURSOR_DISABLED:
            FUNC0(window);
            break;
    }
}