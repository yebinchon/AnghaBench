#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int player_count; TYPE_2__* players; int /*<<< orphan*/  render_radius; int /*<<< orphan*/  ortho; int /*<<< orphan*/  fov; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_11__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  sampler; int /*<<< orphan*/  camera; int /*<<< orphan*/  matrix; int /*<<< orphan*/  program; } ;
struct TYPE_9__ {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  ry; int /*<<< orphan*/  rx; } ;
struct TYPE_10__ {TYPE_1__ state; } ;
typedef  TYPE_1__ State ;
typedef  TYPE_2__ Player ;
typedef  TYPE_3__ Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_6__* g ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(Attrib *attrib, Player *player) {
    State *s = &player->state;
    float matrix[16];
    FUNC6(
        matrix, g->width, g->height,
        s->x, s->y, s->z, s->rx, s->ry, g->fov, g->ortho, g->render_radius);
    FUNC5(attrib->program);
    FUNC4(attrib->matrix, 1, GL_FALSE, matrix);
    FUNC3(attrib->camera, s->x, s->y, s->z);
    FUNC2(attrib->sampler, 0);
    FUNC1(attrib->timer, FUNC7());
    for (int i = 0; i < g->player_count; i++) {
        Player *other = g->players + i;
        if (other != player) {
            FUNC0(attrib, other);
        }
    }
}