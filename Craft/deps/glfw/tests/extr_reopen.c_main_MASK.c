#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int width; int height; } ;
typedef  float GLfloat ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (float,float,float,float) ; 
 int /*<<< orphan*/ ** FUNC9 (int*) ; 
 double FUNC10 () ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (double) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (unsigned int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 

int FUNC24(int argc, char** argv)
{
    int count = 0;
    GLFWwindow* window;

    FUNC22((unsigned int) FUNC23(NULL));

    FUNC14(error_callback);

    if (!FUNC12())
        FUNC1(EXIT_FAILURE);

    for (;;)
    {
        int width, height;
        GLFWmonitor* monitor = NULL;

        if (count % 2 == 0)
        {
            int monitorCount;
            GLFWmonitor** monitors = FUNC9(&monitorCount);
            monitor = monitors[FUNC21() % monitorCount];
        }

        if (monitor)
        {
            const GLFWvidmode* mode = FUNC11(monitor);
            width = mode->width;
            height = mode->height;
        }
        else
        {
            width = 640;
            height = 480;
        }

        window = FUNC19(width, height, monitor);
        if (!window)
        {
            FUNC17();
            FUNC1(EXIT_FAILURE);
        }

        FUNC3(GL_PROJECTION);
        FUNC4(-1.f, 1.f, -1.f, 1.f, 1.f, -1.f);
        FUNC3(GL_MODELVIEW);

        FUNC15(0.0);

        while (FUNC10() < 5.0)
        {
            FUNC2(GL_COLOR_BUFFER_BIT);

            FUNC6();
            FUNC8((GLfloat) FUNC10() * 100.f, 0.f, 0.f, 1.f);
            FUNC7(-0.5f, -0.5f, 1.f, 1.f);
            FUNC5();

            FUNC16(window);
            FUNC13();

            if (FUNC18(window))
            {
                FUNC0(window);
                FUNC20("User closed window\n");

                FUNC17();
                FUNC1(EXIT_SUCCESS);
            }
        }

        FUNC20("Closing window\n");
        FUNC0(window);

        count++;
    }

    FUNC17();
}