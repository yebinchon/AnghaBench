#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; TYPE_2__* data; } ;
struct TYPE_7__ {int sign_faces; int /*<<< orphan*/  sign_buffer; TYPE_1__ signs; } ;
struct TYPE_6__ {int /*<<< orphan*/  text; int /*<<< orphan*/  face; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ SignList ;
typedef  TYPE_2__ Sign ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_3__ Chunk ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(Chunk *chunk) {
    SignList *signs = &chunk->signs;

    // first pass - count characters
    int max_faces = 0;
    for (int i = 0; i < signs->size; i++) {
        Sign *e = signs->data + i;
        max_faces += FUNC4(e->text);
    }

    // second pass - generate geometry
    GLfloat *data = FUNC3(5, max_faces);
    int faces = 0;
    for (int i = 0; i < signs->size; i++) {
        Sign *e = signs->data + i;
        faces += FUNC0(
            data + faces * 30, e->x, e->y, e->z, e->face, e->text);
    }

    FUNC1(chunk->sign_buffer);
    chunk->sign_buffer = FUNC2(5, faces, data);
    chunk->sign_faces = faces;
}