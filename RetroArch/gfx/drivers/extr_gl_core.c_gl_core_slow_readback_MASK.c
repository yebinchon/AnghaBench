#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {TYPE_1__ vp; } ;
typedef  TYPE_2__ gl_core_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BACK ; 
 int /*<<< orphan*/  GL_PACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_PACK_ROW_LENGTH ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC4(gl_core_t *gl, void *buffer)
{
   FUNC1(GL_PACK_ALIGNMENT, 4);
   FUNC1(GL_PACK_ROW_LENGTH, 0);
   FUNC0(GL_PIXEL_PACK_BUFFER, 0);
#ifndef HAVE_OPENGLES
   FUNC2(GL_BACK);
#endif

   FUNC3(gl->vp.x, gl->vp.y,
                gl->vp.width, gl->vp.height,
                GL_RGBA, GL_UNSIGNED_BYTE, buffer);
}