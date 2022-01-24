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
struct TYPE_3__ {int /*<<< orphan*/  uv; int /*<<< orphan*/  position; } ;
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  TYPE_1__ Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC5(Attrib *attrib, GLuint buffer, int count) {
    FUNC0(GL_ARRAY_BUFFER, buffer);
    FUNC3(attrib->position);
    FUNC3(attrib->uv);
    FUNC4(attrib->position, 2, GL_FLOAT, GL_FALSE,
        sizeof(GLfloat) * 4, 0);
    FUNC4(attrib->uv, 2, GL_FLOAT, GL_FALSE,
        sizeof(GLfloat) * 4, (GLvoid *)(sizeof(GLfloat) * 2));
    FUNC2(GL_TRIANGLES, 0, count);
    FUNC1(attrib->position);
    FUNC1(attrib->uv);
    FUNC0(GL_ARRAY_BUFFER, 0);
}