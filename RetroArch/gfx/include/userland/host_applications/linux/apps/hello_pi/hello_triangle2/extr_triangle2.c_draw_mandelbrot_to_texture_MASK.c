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
struct TYPE_3__ {int /*<<< orphan*/  unif_centre2; int /*<<< orphan*/  unif_scale2; int /*<<< orphan*/  program2; int /*<<< orphan*/  buf; int /*<<< orphan*/  tex_fb; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_1__ CUBE_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_TRIANGLE_FAN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(CUBE_STATE_T *state, GLfloat cx, GLfloat cy, GLfloat scale)
{
        // Draw the mandelbrot to a texture
        FUNC2(GL_FRAMEBUFFER,state->tex_fb);
        FUNC0();
        FUNC1(GL_ARRAY_BUFFER, state->buf);

        FUNC7 ( state->program2 );
        FUNC0();

        FUNC6(state->unif_scale2, scale, scale);
        FUNC6(state->unif_centre2, cx, cy);
        FUNC0();
        FUNC3 ( GL_TRIANGLE_FAN, 0, 4 );
        FUNC0();

        FUNC5();
        FUNC4();
        FUNC0();
}