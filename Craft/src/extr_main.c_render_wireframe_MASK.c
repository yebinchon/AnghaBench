#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  render_radius; int /*<<< orphan*/  ortho; int /*<<< orphan*/  fov; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_10__ {int /*<<< orphan*/  matrix; int /*<<< orphan*/  program; } ;
struct TYPE_8__ {int /*<<< orphan*/  ry; int /*<<< orphan*/  rx; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_9__ {TYPE_1__ state; } ;
typedef  TYPE_1__ State ;
typedef  TYPE_2__ Player ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  TYPE_3__ Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_LOGIC_OP ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_6__* g ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(Attrib *attrib, Player *player) {
    State *s = &player->state;
    float matrix[16];
    FUNC10(
        matrix, g->width, g->height,
        s->x, s->y, s->z, s->rx, s->ry, g->fov, g->ortho, g->render_radius);
    int hx, hy, hz;
    int hw = FUNC8(0, s->x, s->y, s->z, s->rx, s->ry, &hx, &hy, &hz);
    if (FUNC9(hw)) {
        FUNC7(attrib->program);
        FUNC5(1);
        FUNC4(GL_COLOR_LOGIC_OP);
        FUNC6(attrib->matrix, 1, GL_FALSE, matrix);
        GLuint wireframe_buffer = FUNC2(hx, hy, hz, 0.53);
        FUNC1(attrib, wireframe_buffer, 3, 24);
        FUNC0(wireframe_buffer);
        FUNC3(GL_COLOR_LOGIC_OP);
    }
}