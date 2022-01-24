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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t item_index; int /*<<< orphan*/  scale; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_6__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  sampler; int /*<<< orphan*/  camera; int /*<<< orphan*/  matrix; int /*<<< orphan*/  program; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  TYPE_1__ Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* g ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int* items ; 
 int /*<<< orphan*/  FUNC11 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13(Attrib *attrib) {
    float matrix[16];
    FUNC11(matrix, g->width, g->height, g->scale);
    FUNC9(attrib->program);
    FUNC8(attrib->matrix, 1, GL_FALSE, matrix);
    FUNC7(attrib->camera, 0, 0, 5);
    FUNC6(attrib->sampler, 0);
    FUNC5(attrib->timer, FUNC12());
    int w = items[g->item_index];
    if (FUNC10(w)) {
        GLuint buffer = FUNC4(0, 0, 0, 0.5, w);
        FUNC2(attrib, buffer);
        FUNC0(buffer);
    }
    else {
        GLuint buffer = FUNC3(0, 0, 0, 0.5, w);
        FUNC1(attrib, buffer);
        FUNC0(buffer);
    }
}