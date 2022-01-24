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

/* Variables and functions */
 int /*<<< orphan*/  DRAW_BALL ; 
 int /*<<< orphan*/  DRAW_BALL_SHADOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  drawBallHow ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
   FUNC2( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
   FUNC5();

   drawBallHow = DRAW_BALL_SHADOW;
   FUNC0();

   FUNC1();

   drawBallHow = DRAW_BALL;
   FUNC0();

   FUNC4();
   FUNC3();
}