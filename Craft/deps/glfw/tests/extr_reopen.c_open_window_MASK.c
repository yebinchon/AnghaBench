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
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  framebuffer_size_callback ; 
 int /*<<< orphan*/ * FUNC0 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 double FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  window_close_callback ; 

__attribute__((used)) static GLFWwindow* FUNC9(int width, int height, GLFWmonitor* monitor)
{
    double base;
    GLFWwindow* window;

    base = FUNC2();

    window = FUNC0(width, height, "Window Re-opener", monitor, NULL);
    if (!window)
        return NULL;

    FUNC3(window);
    FUNC7(1);

    FUNC4(window, framebuffer_size_callback);
    FUNC6(window, window_close_callback);
    FUNC5(window, key_callback);

    if (monitor)
    {
        FUNC8("Opening full screen window on monitor %s took %0.3f seconds\n",
               FUNC1(monitor),
               FUNC2() - base);
    }
    else
    {
        FUNC8("Opening regular window took %0.3f seconds\n",
               FUNC2() - base);
    }

    return window;
}