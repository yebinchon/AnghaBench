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
typedef  int /*<<< orphan*/  GLfloat ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_SAMPLES ; 
 int /*<<< orphan*/  GLFW_VISIBLE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int GL_FALSE ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_MULTISAMPLE_ARB ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_SAMPLES_ARB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  framebuffer_size_callback ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC10 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,float,float,float) ; 
 int /*<<< orphan*/  FUNC12 (float,float,float) ; 
 int /*<<< orphan*/ * FUNC13 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 int /*<<< orphan*/  FUNC29 () ; 

int FUNC30(int argc, char** argv)
{
    int ch, samples = 4;
    GLFWwindow* window;

    while ((ch = FUNC2(argc, argv, "hs:")) != -1)
    {
        switch (ch)
        {
            case 'h':
                FUNC29();
                FUNC1(EXIT_SUCCESS);
            case 's':
                samples = FUNC0(optarg);
                break;
            default:
                FUNC29();
                FUNC1(EXIT_FAILURE);
        }
    }

    FUNC19(error_callback);

    if (!FUNC16())
        FUNC1(EXIT_FAILURE);

    if (samples)
        FUNC28("Requesting MSAA with %i samples\n", samples);
    else
        FUNC28("Requesting that MSAA not be available\n");

    FUNC26(GLFW_SAMPLES, samples);
    FUNC26(GLFW_VISIBLE, GL_FALSE);

    window = FUNC13(800, 400, "Aliasing Detector", NULL, NULL);
    if (!window)
    {
        FUNC25();
        FUNC1(EXIT_FAILURE);
    }

    FUNC21(window, key_callback);
    FUNC20(window, framebuffer_size_callback);

    FUNC17(window);
    FUNC24(1);

    if (!FUNC14("GL_ARB_multisample"))
    {
        FUNC28("GL_ARB_multisample extension not supported\n");

        FUNC25();
        FUNC1(EXIT_FAILURE);
    }

    FUNC22(window);

    FUNC6(GL_SAMPLES_ARB, &samples);
    if (samples)
        FUNC28("Context reports MSAA is available with %i samples\n", samples);
    else
        FUNC28("Context reports MSAA is unavailable\n");

    FUNC8(GL_PROJECTION);
    FUNC9(0.f, 1.f, 0.f, 0.5f, 0.f, 1.f);
    FUNC8(GL_MODELVIEW);

    while (!FUNC27(window))
    {
        GLfloat time = (GLfloat) FUNC15();

        FUNC3(GL_COLOR_BUFFER_BIT);

        FUNC7();
        FUNC12(0.25f, 0.25f, 0.f);
        FUNC11(time, 0.f, 0.f, 1.f);

        FUNC4(GL_MULTISAMPLE_ARB);
        FUNC10(-0.15f, -0.15f, 0.15f, 0.15f);

        FUNC7();
        FUNC12(0.75f, 0.25f, 0.f);
        FUNC11(time, 0.f, 0.f, 1.f);

        FUNC5(GL_MULTISAMPLE_ARB);
        FUNC10(-0.15f, -0.15f, 0.15f, 0.15f);

        FUNC23(window);
        FUNC18();
    }

    FUNC25();
    FUNC1(EXIT_SUCCESS);
}