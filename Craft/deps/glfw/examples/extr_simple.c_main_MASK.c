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
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC9 (float,float,float) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC11 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int*,int*) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 

int FUNC24(void)
{
    GLFWwindow* window;

    FUNC18(error_callback);

    if (!FUNC15())
        FUNC0(EXIT_FAILURE);

    window = FUNC11(640, 480, "Simple example", NULL, NULL);
    if (!window)
    {
        FUNC22();
        FUNC0(EXIT_FAILURE);
    }

    FUNC16(window);
    FUNC21(1);

    FUNC19(window, key_callback);

    while (!FUNC23(window))
    {
        float ratio;
        int width, height;

        FUNC13(window, &width, &height);
        ratio = width / (float) height;

        FUNC10(0, 0, width, height);
        FUNC2(GL_COLOR_BUFFER_BIT);

        FUNC6(GL_PROJECTION);
        FUNC5();
        FUNC7(-ratio, ratio, -1.f, 1.f, 1.f, -1.f);
        FUNC6(GL_MODELVIEW);

        FUNC5();
        FUNC8((float) FUNC14() * 50.f, 0.f, 0.f, 1.f);

        FUNC1(GL_TRIANGLES);
        FUNC3(1.f, 0.f, 0.f);
        FUNC9(-0.6f, -0.4f, 0.f);
        FUNC3(0.f, 1.f, 0.f);
        FUNC9(0.6f, -0.4f, 0.f);
        FUNC3(0.f, 0.f, 1.f);
        FUNC9(0.f, 0.6f, 0.f);
        FUNC4();

        FUNC20(window);
        FUNC17();
    }

    FUNC12(window);

    FUNC22();
    FUNC0(EXIT_SUCCESS);
}