#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* keys; } ;
typedef  TYPE_1__ _GLFWwindow ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_INVALID_ENUM ; 
 int GLFW_KEY_LAST ; 
 int GLFW_PRESS ; 
 int GLFW_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ _GLFW_STICK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int FUNC2(GLFWwindow* handle, int key)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;

    FUNC0(GLFW_RELEASE);

    if (key < 0 || key > GLFW_KEY_LAST)
    {
        FUNC1(GLFW_INVALID_ENUM, "Invalid key");
        return GLFW_RELEASE;
    }

    if (window->keys[key] == _GLFW_STICK)
    {
        // Sticky mode: release key now
        window->keys[key] = GLFW_RELEASE;
        return GLFW_PRESS;
    }

    return (int) window->keys[key];
}