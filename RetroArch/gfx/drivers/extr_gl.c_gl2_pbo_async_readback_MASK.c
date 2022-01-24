#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int width; } ;
struct TYPE_6__ {int pbo_readback_index; int* pbo_readback_valid; TYPE_1__ vp; int /*<<< orphan*/  renderchain_data; int /*<<< orphan*/ * pbo_readback; } ;
typedef  TYPE_2__ gl_t ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BGRA ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  GL_UNSIGNED_INT_8_8_8_8_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(gl_t *gl)
{
#ifdef HAVE_OPENGLES
   GLenum fmt  = GL_RGBA;
   GLenum type = GL_UNSIGNED_BYTE;
#else
   GLenum fmt  = GL_BGRA;
   GLenum type = GL_UNSIGNED_INT_8_8_8_8_REV;
#endif

   FUNC0(
         gl->pbo_readback[gl->pbo_readback_index++]);
   gl->pbo_readback_index &= 3;

   /* 4 frames back, we can readback. */
   gl->pbo_readback_valid[gl->pbo_readback_index] = true;

   FUNC1(gl, gl->renderchain_data,
         FUNC3(gl->vp.width * sizeof(uint32_t)),
         fmt, type, NULL);
   FUNC2();
}