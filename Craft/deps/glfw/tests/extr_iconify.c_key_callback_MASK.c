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
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
#define  GLFW_KEY_ESCAPE 129 
#define  GLFW_KEY_SPACE 128 
 int GLFW_PRESS ; 
 int /*<<< orphan*/  GL_TRUE ; 
 double FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,double,char*) ; 

__attribute__((used)) static void FUNC4(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    FUNC3("%0.2f Key %s\n",
           FUNC0(),
           action == GLFW_PRESS ? "pressed" : "released");

    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case GLFW_KEY_SPACE:
            FUNC1(window);
            break;
        case GLFW_KEY_ESCAPE:
            FUNC2(window, GL_TRUE);
            break;
    }
}