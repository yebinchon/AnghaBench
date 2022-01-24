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
typedef  TYPE_2__ gl1_t ;
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BACK ; 
 int /*<<< orphan*/  GL_PACK_ALIGNMENT ; 
 int /*<<< orphan*/  GL_PACK_ROW_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
      gl1_t *gl1,
      unsigned alignment,
      unsigned fmt, unsigned type,
      void *src)
{
#ifndef VITA
   FUNC0(GL_PACK_ALIGNMENT, alignment);
   FUNC0(GL_PACK_ROW_LENGTH, 0);
   FUNC1(GL_BACK);
#endif
   FUNC2(gl1->vp.x, gl1->vp.y,
         gl1->vp.width, gl1->vp.height,
         (GLenum)fmt, (GLenum)type, (GLvoid*)src);
}