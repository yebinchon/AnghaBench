#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int scale; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_5__ {int /*<<< orphan*/  matrix; int /*<<< orphan*/  program; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  TYPE_1__ Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_LOGIC_OP ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* g ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC9(Attrib *attrib) {
    float matrix[16];
    FUNC8(matrix, g->width, g->height);
    FUNC7(attrib->program);
    FUNC5(4 * g->scale);
    FUNC4(GL_COLOR_LOGIC_OP);
    FUNC6(attrib->matrix, 1, GL_FALSE, matrix);
    GLuint crosshair_buffer = FUNC2();
    FUNC1(attrib, crosshair_buffer, 2, 4);
    FUNC0(crosshair_buffer);
    FUNC3(GL_COLOR_LOGIC_OP);
}