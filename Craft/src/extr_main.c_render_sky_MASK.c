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
struct TYPE_11__ {int /*<<< orphan*/  render_radius; int /*<<< orphan*/  fov; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_10__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  sampler; int /*<<< orphan*/  matrix; int /*<<< orphan*/  program; } ;
struct TYPE_8__ {int /*<<< orphan*/  ry; int /*<<< orphan*/  rx; } ;
struct TYPE_9__ {TYPE_1__ state; } ;
typedef  TYPE_1__ State ;
typedef  TYPE_2__ Player ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  TYPE_3__ Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* g ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(Attrib *attrib, Player *player, GLuint buffer) {
    State *s = &player->state;
    float matrix[16];
    FUNC5(
        matrix, g->width, g->height,
        0, 0, 0, s->rx, s->ry, g->fov, 0, g->render_radius);
    FUNC4(attrib->program);
    FUNC3(attrib->matrix, 1, GL_FALSE, matrix);
    FUNC2(attrib->sampler, 2);
    FUNC1(attrib->timer, FUNC6());
    FUNC0(attrib, buffer, 512 * 3);
}