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
 int /*<<< orphan*/  cursor_position_callback ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ dt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (double) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  height ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  key_callback ; 
 int /*<<< orphan*/  mouse_button_callback ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ t ; 
 scalar_t__ t_old ; 
 int /*<<< orphan*/  width ; 

int FUNC20( void )
{
   GLFWwindow* window;

   /* Init GLFW */
   if( !FUNC5() )
      FUNC1( EXIT_FAILURE );

   FUNC16(GLFW_DEPTH_BITS, 16);

   window = FUNC2( 400, 400, "Boing (classic Amiga demo)", NULL, NULL );
   if (!window)
   {
       FUNC15();
       FUNC1( EXIT_FAILURE );
   }

   FUNC9(window, reshape);
   FUNC10(window, key_callback);
   FUNC11(window, mouse_button_callback);
   FUNC8(window, cursor_position_callback);

   FUNC6(window);
   FUNC14( 1 );

   FUNC3(window, &width, &height);
   FUNC19(window, width, height);

   FUNC12( 0.0 );

   FUNC18();

   /* Main loop */
   for (;;)
   {
       /* Timing */
       t = FUNC4();
       dt = t - t_old;
       t_old = t;

       /* Draw one frame */
       FUNC0();

       /* Swap buffers */
       FUNC13(window);
       FUNC7();

       /* Check if we are still running */
       if (FUNC17(window))
           break;
   }

   FUNC15();
   FUNC1( EXIT_SUCCESS );
}