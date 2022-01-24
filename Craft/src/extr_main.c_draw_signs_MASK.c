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
struct TYPE_3__ {int sign_faces; int /*<<< orphan*/  sign_buffer; } ;
typedef  TYPE_1__ Chunk ;
typedef  int /*<<< orphan*/  Attrib ;

/* Variables and functions */
 int /*<<< orphan*/  GL_POLYGON_OFFSET_FILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

void FUNC4(Attrib *attrib, Chunk *chunk) {
    FUNC2(GL_POLYGON_OFFSET_FILL);
    FUNC3(-8, -1024);
    FUNC0(attrib, chunk->sign_buffer, chunk->sign_faces * 6);
    FUNC1(GL_POLYGON_OFFSET_FILL);
}