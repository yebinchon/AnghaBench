#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ redBits; scalar_t__ greenBits; scalar_t__ blueBits; scalar_t__ refreshRate; int width; scalar_t__ height; } ;
typedef  int /*<<< orphan*/  GLFWwindow ;
typedef  TYPE_1__ GLFWvidmode ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_BLUE_BITS ; 
 int /*<<< orphan*/  GLFW_GREEN_BITS ; 
 int /*<<< orphan*/  GLFW_RED_BITS ; 
 int /*<<< orphan*/  GLFW_REFRESH_RATE ; 
 int /*<<< orphan*/  GL_BLUE_BITS ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_GREEN_BITS ; 
 int /*<<< orphan*/  GL_RED_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  framebuffer_size_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC4 (int,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 double FUNC8 () ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (double) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 

__attribute__((used)) static void FUNC22(GLFWmonitor* monitor)
{
    int i, count;
    GLFWwindow* window;
    const GLFWvidmode* modes = FUNC9(monitor, &count);

    for (i = 0;  i < count;  i++)
    {
        const GLFWvidmode* mode = modes + i;
        GLFWvidmode current;

        FUNC19(GLFW_RED_BITS, mode->redBits);
        FUNC19(GLFW_GREEN_BITS, mode->greenBits);
        FUNC19(GLFW_BLUE_BITS, mode->blueBits);
        FUNC19(GLFW_REFRESH_RATE, mode->refreshRate);

        FUNC21("Testing mode %u on monitor %s: %s\n",
               (unsigned int) i,
               FUNC6(monitor),
               FUNC1(mode));

        window = FUNC4(mode->width, mode->height,
                                  "Video Mode Test",
                                  FUNC7(),
                                  NULL);
        if (!window)
        {
            FUNC21("Failed to enter mode %u: %s\n",
                   (unsigned int) i,
                   FUNC1(mode));
            continue;
        }

        FUNC13(window, framebuffer_size_callback);
        FUNC14(window, key_callback);

        FUNC11(window);
        FUNC17(1);

        FUNC15(0.0);

        while (FUNC8() < 5.0)
        {
            FUNC2(GL_COLOR_BUFFER_BIT);
            FUNC16(window);
            FUNC12();

            if (FUNC20(window))
            {
                FUNC21("User terminated program\n");

                FUNC18();
                FUNC0(EXIT_SUCCESS);
            }
        }

        FUNC3(GL_RED_BITS, &current.redBits);
        FUNC3(GL_GREEN_BITS, &current.greenBits);
        FUNC3(GL_BLUE_BITS, &current.blueBits);

        FUNC10(window, &current.width, &current.height);

        if (current.redBits != mode->redBits ||
            current.greenBits != mode->greenBits ||
            current.blueBits != mode->blueBits)
        {
            FUNC21("*** Color bit mismatch: (%i %i %i) instead of (%i %i %i)\n",
                   current.redBits, current.greenBits, current.blueBits,
                   mode->redBits, mode->greenBits, mode->blueBits);
        }

        if (current.width != mode->width || current.height != mode->height)
        {
            FUNC21("*** Size mismatch: %ix%i instead of %ix%i\n",
                   current.width, current.height,
                   mode->width, mode->height);
        }

        FUNC21("Closing window\n");

        FUNC5(window);
        window = NULL;

        FUNC12();
    }
}