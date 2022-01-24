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
struct TYPE_4__ {scalar_t__ screen_height; scalar_t__ screen_width; } ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  TYPE_1__ CUBE_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  GL_NICEST ; 
 int /*<<< orphan*/  GL_PERSPECTIVE_CORRECTION_HINT ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 double M_PI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (double) ; 

__attribute__((used)) static void FUNC8(CUBE_STATE_T *state)
{
   float nearp = 0.1f;
   float farp = 500.0f;
   float hht;
   float hwd;

   FUNC2( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );

   FUNC5(0, 0, (GLsizei)state->screen_width, (GLsizei)state->screen_height);

   FUNC4(GL_PROJECTION);
   FUNC3();

   hht = nearp * (float)FUNC7(45.0 / 2.0 / 180.0 * M_PI);
   hwd = hht * (float)state->screen_width / (float)state->screen_height;

   FUNC1(-hwd, hwd, -hht, hht, nearp, farp);

   FUNC0( GL_VERTEX_ARRAY );

   FUNC6(state);
}