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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_CONTEXT_VERSION_MAJOR ; 
 int /*<<< orphan*/  GLFW_CONTEXT_VERSION_MINOR ; 
 int /*<<< orphan*/  GLFW_SAMPLES ; 
 int /*<<< orphan*/  GL_MULTISAMPLE_ARB ; 
 int /*<<< orphan*/  cursorPosFun ; 
 scalar_t__ do_redraw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  mouseButtonFun ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  width ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(void)
{
    GLFWwindow* window;

    // Initialise GLFW
    if (!FUNC8())
    {
        FUNC1(stderr, "Failed to initialize GLFW\n");
        FUNC0(EXIT_FAILURE);
    }

    FUNC18(GLFW_SAMPLES, 4);

    // Open OpenGL window
    window = FUNC4(500, 500, "Split view demo", NULL, NULL);
    if (!window)
    {
        FUNC1(stderr, "Failed to open GLFW window\n");

        FUNC16();
        FUNC0(EXIT_FAILURE);
    }

    // Set callback functions
    FUNC11(window, framebufferSizeFun);
    FUNC14(window, windowRefreshFun);
    FUNC10(window, cursorPosFun);
    FUNC13(window, mouseButtonFun);
    FUNC12(window, key_callback);

    // Enable vsync
    FUNC9(window);
    FUNC15(1);

    if (FUNC5("GL_ARB_multisample") ||
        FUNC7(window, GLFW_CONTEXT_VERSION_MAJOR) >= 2 ||
        FUNC7(window, GLFW_CONTEXT_VERSION_MINOR) >= 3)
    {
        FUNC3(GL_MULTISAMPLE_ARB);
    }

    FUNC6(window, &width, &height);
    FUNC2(window, width, height);

    // Main loop
    for (;;)
    {
        // Only redraw if we need to
        if (do_redraw)
            FUNC20(window);

        // Wait for new events
        FUNC17();

        // Check if the window should be closed
        if (FUNC19(window))
            break;
    }

    // Close OpenGL window and terminate GLFW
    FUNC16();

    FUNC0(EXIT_SUCCESS);
}