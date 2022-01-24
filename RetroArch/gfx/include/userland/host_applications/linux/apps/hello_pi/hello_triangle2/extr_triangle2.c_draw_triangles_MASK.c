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
struct TYPE_3__ {int /*<<< orphan*/  surface; int /*<<< orphan*/  display; int /*<<< orphan*/  unif_tex; int /*<<< orphan*/  unif_centre; int /*<<< orphan*/  unif_offset; int /*<<< orphan*/  unif_scale; int /*<<< orphan*/  unif_color; int /*<<< orphan*/  tex; int /*<<< orphan*/  program; int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_1__ CUBE_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRIANGLE_FAN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(CUBE_STATE_T *state, GLfloat cx, GLfloat cy, GLfloat scale, GLfloat x, GLfloat y)
{
        // Now render to the main frame buffer
        FUNC3(GL_FRAMEBUFFER,0);
        // Clear the background (not really necessary I suppose)
        FUNC5(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
        FUNC0();

        FUNC2(GL_ARRAY_BUFFER, state->buf);
        FUNC0();
        FUNC12 ( state->program );
        FUNC0();
        FUNC4(GL_TEXTURE_2D,state->tex);
        FUNC0();
        FUNC11(state->unif_color, 0.5, 0.5, 0.8, 1.0);
        FUNC10(state->unif_scale, scale, scale);
        FUNC10(state->unif_offset, x, y);
        FUNC10(state->unif_centre, cx, cy);
        FUNC9(state->unif_tex, 0); // I don't really understand this part, perhaps it relates to active texture?
        FUNC0();

        FUNC6 ( GL_TRIANGLE_FAN, 0, 4 );
        FUNC0();

        FUNC2(GL_ARRAY_BUFFER, 0);

        FUNC8();
        FUNC7();
        FUNC0();

        FUNC1(state->display, state->surface);
        FUNC0();
}