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
 int /*<<< orphan*/  GLFW_DEPTH_BITS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int,int)) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC18(int argc, char *argv[])
{
    GLFWwindow* window;
    int width, height;

    if( !FUNC6() )
    {
        FUNC3( stderr, "Failed to initialize GLFW\n" );
        FUNC2( EXIT_FAILURE );
    }

    FUNC14(GLFW_DEPTH_BITS, 16);

    window = FUNC4( 300, 300, "Gears", NULL, NULL );
    if (!window)
    {
        FUNC3( stderr, "Failed to open GLFW window\n" );
        FUNC13();
        FUNC2( EXIT_FAILURE );
    }

    // Set callback functions
    FUNC9(window, reshape);
    FUNC10(window, key);

    FUNC7(window);
    FUNC12( 1 );

    FUNC5(window, &width, &height);
    FUNC17(window, width, height);

    // Parse command-line options
    FUNC16();

    // Main loop
    while( !FUNC15(window) )
    {
        // Draw gears
        FUNC1();

        // Update animation
        FUNC0();

        // Swap buffers
        FUNC11(window);
        FUNC8();
    }

    // Terminate GLFW
    FUNC13();

    // Exit program
    FUNC2( EXIT_SUCCESS );
}