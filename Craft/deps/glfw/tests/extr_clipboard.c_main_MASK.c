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
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  framebuffer_size_callback ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (float,float,float,float) ; 
 int /*<<< orphan*/ * FUNC9 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC20 () ; 

int FUNC21(int argc, char** argv)
{
    int ch;
    GLFWwindow* window;

    while ((ch = FUNC2(argc, argv, "h")) != -1)
    {
        switch (ch)
        {
            case 'h':
                FUNC20();
                FUNC0(EXIT_SUCCESS);

            default:
                FUNC20();
                FUNC0(EXIT_FAILURE);
        }
    }

    FUNC12(error_callback);

    if (!FUNC10())
    {
        FUNC1(stderr, "Failed to initialize GLFW\n");
        FUNC0(EXIT_FAILURE);
    }

    window = FUNC9(200, 200, "Clipboard Test", NULL, NULL);
    if (!window)
    {
        FUNC17();

        FUNC1(stderr, "Failed to open GLFW window\n");
        FUNC0(EXIT_FAILURE);
    }

    FUNC11(window);
    FUNC16(1);

    FUNC14(window, key_callback);
    FUNC13(window, framebuffer_size_callback);

    FUNC6(GL_PROJECTION);
    FUNC7(-1.f, 1.f, -1.f, 1.f, -1.f, 1.f);
    FUNC6(GL_MODELVIEW);

    FUNC4(0.5f, 0.5f, 0.5f, 0);

    while (!FUNC19(window))
    {
        FUNC3(GL_COLOR_BUFFER_BIT);

        FUNC5(0.8f, 0.2f, 0.4f);
        FUNC8(-0.5f, -0.5f, 0.5f, 0.5f);

        FUNC15(window);
        FUNC18();
    }

    FUNC17();
    FUNC0(EXIT_SUCCESS);
}