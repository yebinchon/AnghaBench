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
typedef  int /*<<< orphan*/  TEAPOT_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  GL_AMBIENT ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_LEQUAL ; 
 int /*<<< orphan*/  GL_LIGHT0 ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  FUNC0 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 

__attribute__((used)) static void FUNC5(TEAPOT_STATE_T *state)
{
   // Set background color and clear buffers
   FUNC0((0.3922f+7*0.5f)/8, (0.1176f+7*0.5f)/8, (0.5882f+7*0.5f)/8, 1.0f);

   // Enable back face culling.
   FUNC3(GL_CULL_FACE);

   FUNC3(GL_DEPTH_TEST);
   FUNC1(1.0);
   FUNC2(GL_LEQUAL);

   float noAmbient[] = {1.0f, 1.0f, 1.0f, 1.0f};
   FUNC4(GL_LIGHT0, GL_AMBIENT, noAmbient);
   FUNC3(GL_LIGHT0);
   FUNC3(GL_LIGHTING);
}