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
#define  GLFW_KEY_C 130 
#define  GLFW_KEY_ESCAPE 129 
#define  GLFW_KEY_V 128 
 int GLFW_PRESS ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int MODIFIER ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action != GLFW_PRESS)
        return;

    switch (key)
    {
        case GLFW_KEY_ESCAPE:
            FUNC2(window, GL_TRUE);
            break;

        case GLFW_KEY_V:
            if (mods == MODIFIER)
            {
                const char* string;

                string = FUNC0(window);
                if (string)
                    FUNC3("Clipboard contains \"%s\"\n", string);
                else
                    FUNC3("Clipboard does not contain a string\n");
            }
            break;

        case GLFW_KEY_C:
            if (mods == MODIFIER)
            {
                const char* string = "Hello GLFW World!";
                FUNC1(window, string);
                FUNC3("Setting clipboard to \"%s\"\n", string);
            }
            break;
    }
}