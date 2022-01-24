#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  scalar_t__ GLboolean ;
typedef  int /*<<< orphan*/  GLFWwindow ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  GLFW_DECORATED ; 
 int /*<<< orphan*/  GLFW_VISIBLE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 scalar_t__ GL_FALSE ; 
 scalar_t__ GL_TRUE ; 
 TYPE_1__* colors ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/ * titles ; 

int FUNC16(int argc, char** argv)
{
    int i;
    GLboolean running = GL_TRUE;
    GLFWwindow* windows[4];

    FUNC8(error_callback);

    if (!FUNC5())
        FUNC0(EXIT_FAILURE);

    FUNC14(GLFW_DECORATED, GL_FALSE);
    FUNC14(GLFW_VISIBLE, GL_FALSE);

    for (i = 0;  i < 4;  i++)
    {
        int left, top, right, bottom;

        windows[i] = FUNC3(200, 200, titles[i], NULL, NULL);
        if (!windows[i])
        {
            FUNC13();
            FUNC0(EXIT_FAILURE);
        }

        FUNC9(windows[i], key_callback);

        FUNC6(windows[i]);
        FUNC2(colors[i].r, colors[i].g, colors[i].b, 1.f);

        FUNC4(windows[i], &left, &top, &right, &bottom);
        FUNC10(windows[i],
                         100 + (i & 1) * (200 + left + right),
                         100 + (i >> 1) * (200 + top + bottom));
    }

    for (i = 0;  i < 4;  i++)
        FUNC11(windows[i]);

    while (running)
    {
        for (i = 0;  i < 4;  i++)
        {
            FUNC6(windows[i]);
            FUNC1(GL_COLOR_BUFFER_BIT);
            FUNC12(windows[i]);

            if (FUNC15(windows[i]))
                running = GL_FALSE;
        }

        FUNC7();
    }

    FUNC13();
    FUNC0(EXIT_SUCCESS);
}