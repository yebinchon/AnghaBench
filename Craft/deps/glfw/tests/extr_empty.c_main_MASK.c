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
typedef  int /*<<< orphan*/  thrd_t ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 scalar_t__ GL_FALSE ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 float FUNC17 () ; 
 scalar_t__ running ; 
 scalar_t__ FUNC18 (float) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ thrd_success ; 
 int /*<<< orphan*/  thread_main ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 

int FUNC23(void)
{
    int result;
    thrd_t thread;
    GLFWwindow* window;

    FUNC19((unsigned int) FUNC22(NULL));

    FUNC11(error_callback);

    if (!FUNC9())
        FUNC0(EXIT_FAILURE);

    window = FUNC5(640, 480, "Empty Event Test", NULL, NULL);
    if (!window)
    {
        FUNC14();
        FUNC0(EXIT_FAILURE);
    }

    FUNC10(window);
    FUNC12(window, key_callback);

    if (FUNC20(&thread, thread_main, NULL) != thrd_success)
    {
        FUNC1(stderr, "Failed to create secondary thread\n");

        FUNC14();
        FUNC0(EXIT_FAILURE);
    }

    while (running)
    {
        int width, height;
        float r = FUNC17(), g = FUNC17(), b = FUNC17();
        float l = (float) FUNC18(r * r + g * g + b * b);

        FUNC7(window, &width, &height);

        FUNC4(0, 0, width, height);
        FUNC3(r / l, g / l, b / l, 1.f);
        FUNC2(GL_COLOR_BUFFER_BIT);
        FUNC13(window);

        FUNC15();

        if (FUNC16(window))
            running = GL_FALSE;
    }

    FUNC8(window);
    FUNC21(thread, &result);
    FUNC6(window);

    FUNC14();
    FUNC0(EXIT_SUCCESS);
}