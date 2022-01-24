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
struct TYPE_3__ {int width; int height; int /*<<< orphan*/  refreshRate; int /*<<< orphan*/  blueBits; int /*<<< orphan*/  greenBits; int /*<<< orphan*/  redBits; } ;
typedef  scalar_t__ GLboolean ;
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
 scalar_t__ GL_FALSE ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 scalar_t__ GL_TRUE ; 
 float FUNC0 (float) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 double frame_rate ; 
 int /*<<< orphan*/  framebuffer_size_callback ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (float,float,float,float) ; 
 int /*<<< orphan*/ * FUNC7 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 double FUNC10 () ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int swap_tear ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 () ; 

int FUNC25(int argc, char** argv)
{
    int ch, width, height;
    float position;
    unsigned long frame_count = 0;
    double last_time, current_time;
    GLboolean fullscreen = GL_FALSE;
    GLFWmonitor* monitor = NULL;
    GLFWwindow* window;

    while ((ch = FUNC2(argc, argv, "fh")) != -1)
    {
        switch (ch)
        {
            case 'h':
                FUNC24();
                FUNC1(EXIT_SUCCESS);

            case 'f':
                fullscreen = GL_TRUE;
                break;
        }
    }

    FUNC15(error_callback);

    if (!FUNC12())
        FUNC1(EXIT_FAILURE);

    if (fullscreen)
    {
        const GLFWvidmode* mode;

        monitor = FUNC9();
        mode = FUNC11(monitor);

        FUNC20(GLFW_RED_BITS, mode->redBits);
        FUNC20(GLFW_GREEN_BITS, mode->greenBits);
        FUNC20(GLFW_BLUE_BITS, mode->blueBits);
        FUNC20(GLFW_REFRESH_RATE, mode->refreshRate);

        width = mode->width;
        height = mode->height;
    }
    else
    {
        width = 640;
        height = 480;
    }

    window = FUNC7(width, height, "", monitor, NULL);
    if (!window)
    {
        FUNC19();
        FUNC1(EXIT_FAILURE);
    }

    FUNC13(window);
    FUNC22(window, 0);

    last_time = FUNC10();
    frame_rate = 0.0;
    swap_tear = (FUNC8("WGL_EXT_swap_control_tear") ||
                 FUNC8("GLX_EXT_swap_control_tear"));

    FUNC16(window, framebuffer_size_callback);
    FUNC17(window, key_callback);

    FUNC4(GL_PROJECTION);
    FUNC5(-1.f, 1.f, -1.f, 1.f, 1.f, -1.f);
    FUNC4(GL_MODELVIEW);

    while (!FUNC21(window))
    {
        FUNC3(GL_COLOR_BUFFER_BIT);

        position = FUNC0((float) FUNC10() * 4.f) * 0.75f;
        FUNC6(position - 0.25f, -1.f, position + 0.25f, 1.f);

        FUNC18(window);
        FUNC14();

        frame_count++;

        current_time = FUNC10();
        if (current_time - last_time > 1.0)
        {
            frame_rate = frame_count / (current_time - last_time);
            frame_count = 0;
            last_time = current_time;
            FUNC23(window);
        }
    }

    FUNC19();
    FUNC1(EXIT_SUCCESS);
}