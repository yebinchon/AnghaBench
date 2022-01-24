#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
#define  GLFW_CURSOR 130 
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
#define  GLFW_STICKY_KEYS 129 
#define  GLFW_STICKY_MOUSE_BUTTONS 128 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(GLFWwindow* handle, int mode, int value)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;

    FUNC0();

    switch (mode)
    {
        case GLFW_CURSOR:
            FUNC2(window, value);
            break;
        case GLFW_STICKY_KEYS:
            FUNC3(window, value ? GL_TRUE : GL_FALSE);
            break;
        case GLFW_STICKY_MOUSE_BUTTONS:
            FUNC4(window, value ? GL_TRUE : GL_FALSE);
            break;
        default:
            FUNC1(GLFW_INVALID_ENUM, "Invalid input mode");
            break;
    }
}