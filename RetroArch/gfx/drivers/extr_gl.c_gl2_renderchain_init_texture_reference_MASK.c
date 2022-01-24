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
struct TYPE_5__ {int tex_w; unsigned int tex_h; int base_size; int /*<<< orphan*/ * empty_buf; } ;
typedef  TYPE_1__ gl_t ;
struct TYPE_6__ {scalar_t__ egl_images; } ;
typedef  TYPE_2__ gl2_renderchain_data_t ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static void FUNC2(
      gl_t *gl,
      gl2_renderchain_data_t *chain,
      unsigned i,
      unsigned internal_fmt, unsigned texture_fmt,
      unsigned texture_type)
{
#ifdef HAVE_PSGL
   glTextureReferenceSCE(GL_TEXTURE_2D, 1,
         gl->tex_w, gl->tex_h, 0,
         (GLenum)internal_fmt,
         gl->tex_w * gl->base_size,
         gl->tex_w * gl->tex_h * i * gl->base_size);
#else
   if (chain->egl_images)
      return;

   FUNC0(GL_TEXTURE_2D,
      0,
      (GLenum)internal_fmt,
      gl->tex_w, gl->tex_h, 0,
      (GLenum)texture_type,
      (GLenum)texture_fmt,
      gl->empty_buf ? gl->empty_buf : NULL);
#endif
}