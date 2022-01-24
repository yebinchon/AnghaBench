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
 int /*<<< orphan*/  GLFW_VISIBLE ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  HEIGHT ; 
 int /*<<< orphan*/  WIDTH ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_callback ; 

__attribute__((used)) static GLFWwindow* FUNC7(const char* title, GLFWwindow* share, int posX, int posY)
{
    GLFWwindow* window;

    FUNC6(GLFW_VISIBLE, GL_FALSE);
    window = FUNC0(WIDTH, HEIGHT, title, NULL, share);
    if (!window)
        return NULL;

    FUNC1(window);
    FUNC5(1);
    FUNC3(window, posX, posY);
    FUNC4(window);

    FUNC2(window, key_callback);

    return window;
}