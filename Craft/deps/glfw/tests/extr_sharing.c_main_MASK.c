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
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ ** windows ; 

int FUNC14(int argc, char** argv)
{
    int x, y, width;
    GLuint texture;

    FUNC8(error_callback);

    if (!FUNC6())
        FUNC2(EXIT_FAILURE);

    windows[0] = FUNC13("First", NULL, OFFSET, OFFSET);
    if (!windows[0])
    {
        FUNC10();
        FUNC2(EXIT_FAILURE);
    }

    // This is the one and only time we create a texture
    // It is created inside the first context, created above
    // It will then be shared with the second context, created below
    texture = FUNC0();

    FUNC4(windows[0], &x, &y);
    FUNC5(windows[0], &width, NULL);

    // Put the second window to the right of the first one
    windows[1] = FUNC13("Second", windows[0], x + width + OFFSET, y);
    if (!windows[1])
    {
        FUNC10();
        FUNC2(EXIT_FAILURE);
    }

    // Set drawing color for both contexts
    FUNC7(windows[0]);
    FUNC3(0.6f, 0.f, 0.6f);
    FUNC7(windows[1]);
    FUNC3(0.6f, 0.6f, 0.f);

    FUNC7(windows[0]);

    while (!FUNC12(windows[0]) &&
           !FUNC12(windows[1]))
    {
        FUNC7(windows[0]);
        FUNC1(texture);

        FUNC7(windows[1]);
        FUNC1(texture);

        FUNC9(windows[0]);
        FUNC9(windows[1]);

        FUNC11();
    }

    FUNC10();
    FUNC2(EXIT_SUCCESS);
}