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
struct TYPE_3__ {int width; int height; int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; int /*<<< orphan*/  refreshRate; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_BLUE_BITS ; 
 int /*<<< orphan*/  GLFW_GREEN_BITS ; 
 int /*<<< orphan*/  GLFW_RED_BITS ; 
 int /*<<< orphan*/  GLFW_REFRESH_RATE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  framebuffer_size_callback ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float,float,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC7 (float,float,float,float) ; 
 int /*<<< orphan*/ * FUNC8 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC23 () ; 

int FUNC24(int argc, char** argv)
{
    int width, height, ch;
    GLFWmonitor* monitor = NULL;
    GLFWwindow* window;

    FUNC13(error_callback);

    if (!FUNC11())
        FUNC0(EXIT_FAILURE);

    while ((ch = FUNC1(argc, argv, "fh")) != -1)
    {
        switch (ch)
        {
            case 'h':
                FUNC23();
                FUNC0(EXIT_SUCCESS);

            case 'f':
                monitor = FUNC9();
                break;

            default:
                FUNC23();
                FUNC0(EXIT_FAILURE);
        }
    }

    if (monitor)
    {
        const GLFWvidmode* mode = FUNC10(monitor);

        FUNC20(GLFW_REFRESH_RATE, mode->refreshRate);
        FUNC20(GLFW_RED_BITS, mode->redBits);
        FUNC20(GLFW_GREEN_BITS, mode->greenBits);
        FUNC20(GLFW_BLUE_BITS, mode->blueBits);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width = 200;
        height = 200;
    }

    window = FUNC8(width, height, "Gamma Test", monitor, NULL);
    if (!window)
    {
        FUNC18();
        FUNC0(EXIT_FAILURE);
    }

    FUNC22(window, 1.f);

    FUNC12(window);
    FUNC17(1);

    FUNC15(window, key_callback);
    FUNC14(window, framebuffer_size_callback);

    FUNC5(GL_PROJECTION);
    FUNC6(-1.f, 1.f, -1.f, 1.f, -1.f, 1.f);
    FUNC5(GL_MODELVIEW);

    FUNC3(0.5f, 0.5f, 0.5f, 0);

    while (!FUNC21(window))
    {
        FUNC2(GL_COLOR_BUFFER_BIT);

        FUNC4(0.8f, 0.2f, 0.4f);
        FUNC7(-0.5f, -0.5f, 0.5f, 0.5f);

        FUNC16(window);
        FUNC19();
    }

    FUNC18();
    FUNC0(EXIT_SUCCESS);
}