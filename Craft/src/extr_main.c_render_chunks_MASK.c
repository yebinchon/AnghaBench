#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int ortho; float render_radius; int chunk_count; TYPE_3__* chunks; int /*<<< orphan*/  fov; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_15__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  extra4; int /*<<< orphan*/  extra3; int /*<<< orphan*/  extra2; int /*<<< orphan*/  extra1; int /*<<< orphan*/  sampler; int /*<<< orphan*/  camera; int /*<<< orphan*/  matrix; int /*<<< orphan*/  program; } ;
struct TYPE_14__ {scalar_t__ faces; int /*<<< orphan*/  maxy; int /*<<< orphan*/  miny; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
struct TYPE_12__ {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  ry; int /*<<< orphan*/  rx; } ;
struct TYPE_13__ {TYPE_1__ state; } ;
typedef  TYPE_1__ State ;
typedef  TYPE_2__ Player ;
typedef  TYPE_3__ Chunk ;
typedef  TYPE_4__ Attrib ;

/* Variables and functions */
 float CHUNK_SIZE ; 
 int /*<<< orphan*/  GL_FALSE ; 
 float FUNC0 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (float**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (float**,float,float*) ; 
 TYPE_7__* g ; 
 float FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,float) ; 
 float FUNC13 () ; 

int FUNC14(Attrib *attrib, Player *player) {
    int result = 0;
    State *s = &player->state;
    FUNC4(player);
    int p = FUNC2(s->x);
    int q = FUNC2(s->z);
    float light = FUNC6();
    float matrix[16];
    FUNC12(
        matrix, g->width, g->height,
        s->x, s->y, s->z, s->rx, s->ry, g->fov, g->ortho, g->render_radius);
    float planes[6][4];
    FUNC5(planes, g->render_radius, matrix);
    FUNC11(attrib->program);
    FUNC10(attrib->matrix, 1, GL_FALSE, matrix);
    FUNC9(attrib->camera, s->x, s->y, s->z);
    FUNC8(attrib->sampler, 0);
    FUNC8(attrib->extra1, 2);
    FUNC7(attrib->extra2, light);
    FUNC7(attrib->extra3, g->render_radius * CHUNK_SIZE);
    FUNC8(attrib->extra4, g->ortho);
    FUNC7(attrib->timer, FUNC13());
    for (int i = 0; i < g->chunk_count; i++) {
        Chunk *chunk = g->chunks + i;
        if (FUNC0(chunk, p, q) > g->render_radius) {
            continue;
        }
        if (!FUNC1(
            planes, chunk->p, chunk->q, chunk->miny, chunk->maxy))
        {
            continue;
        }
        FUNC3(attrib, chunk);
        result += chunk->faces;
    }
    return result;
}