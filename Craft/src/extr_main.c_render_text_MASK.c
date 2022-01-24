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
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_5__ {int /*<<< orphan*/  extra1; int /*<<< orphan*/  sampler; int /*<<< orphan*/  matrix; int /*<<< orphan*/  program; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  TYPE_1__ Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* g ; 
 int /*<<< orphan*/  FUNC2 (float,float,float,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 

void FUNC8(
    Attrib *attrib, int justify, float x, float y, float n, char *text)
{
    float matrix[16];
    FUNC6(matrix, g->width, g->height);
    FUNC5(attrib->program);
    FUNC4(attrib->matrix, 1, GL_FALSE, matrix);
    FUNC3(attrib->sampler, 1);
    FUNC3(attrib->extra1, 0);
    int length = FUNC7(text);
    x -= n * justify * (length - 1) / 2;
    GLuint buffer = FUNC2(x, y, n, text);
    FUNC1(attrib, buffer, length);
    FUNC0(buffer);
}