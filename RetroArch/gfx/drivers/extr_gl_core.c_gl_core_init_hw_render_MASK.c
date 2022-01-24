#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct retro_hw_render_callback {scalar_t__ depth; scalar_t__ stencil; int /*<<< orphan*/  bottom_left_origin; } ;
struct TYPE_4__ {int hw_render_enable; unsigned int hw_render_max_width; unsigned int hw_render_max_height; scalar_t__ hw_render_rb_ds; int /*<<< orphan*/  hw_render_bottom_left; int /*<<< orphan*/  hw_render_texture; int /*<<< orphan*/  hw_render_fbo; } ;
typedef  TYPE_1__ gl_core_t ;
typedef  unsigned int GLint ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_DEPTH24_STENCIL8 ; 
 int /*<<< orphan*/  GL_DEPTH_ATTACHMENT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_DEPTH_COMPONENT16 ; 
 int /*<<< orphan*/  GL_DEPTH_STENCIL_ATTACHMENT ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 scalar_t__ GL_FRAMEBUFFER_COMPLETE ; 
 int /*<<< orphan*/  GL_MAX_RENDERBUFFER_SIZE ; 
 int /*<<< orphan*/  GL_MAX_TEXTURE_SIZE ; 
 int /*<<< orphan*/  GL_RENDERBUFFER ; 
 int /*<<< orphan*/  GL_RGBA8 ; 
 int GL_STENCIL_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 struct retro_hw_render_callback* FUNC16 () ; 

__attribute__((used)) static bool FUNC17(gl_core_t *gl, unsigned width, unsigned height)
{
   GLint max_fbo_size;
   GLint max_rb_size;
   GLenum status;
   struct retro_hw_render_callback *hwr = FUNC16();

   FUNC15(gl, true);

   FUNC1("[GLCore]: Initializing HW render (%u x %u).\n", width, height);
   FUNC12(GL_MAX_TEXTURE_SIZE, &max_fbo_size);
   FUNC12(GL_MAX_RENDERBUFFER_SIZE, &max_rb_size);
   FUNC1("[GLCore]: Max texture size: %d px, renderbuffer size: %d px.\n",
             max_fbo_size, max_rb_size);

   if (width > (unsigned)max_fbo_size)
       width = max_fbo_size;
   if (width > (unsigned)max_rb_size)
       width = max_rb_size;
   if (height > (unsigned)max_fbo_size)
       height = max_fbo_size;
   if (height > (unsigned)max_rb_size)
       height = max_rb_size;

   FUNC9(1, &gl->hw_render_fbo);
   FUNC2(GL_FRAMEBUFFER, gl->hw_render_fbo);
   FUNC11(1, &gl->hw_render_texture);
   FUNC4(GL_TEXTURE_2D, gl->hw_render_texture);
   FUNC14(GL_TEXTURE_2D, 1, GL_RGBA8, width, height);
   FUNC8(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, gl->hw_render_texture, 0);

   gl->hw_render_rb_ds = 0;
   gl->hw_render_bottom_left = hwr->bottom_left_origin;
   if (hwr->depth)
   {
      FUNC10(1, &gl->hw_render_rb_ds);
      FUNC3(GL_RENDERBUFFER, gl->hw_render_rb_ds);
      FUNC13(GL_RENDERBUFFER, hwr->stencil ? GL_DEPTH24_STENCIL8 : GL_DEPTH_COMPONENT16,
                            width, height);
      FUNC3(GL_RENDERBUFFER, 0);

      if (hwr->stencil)
         FUNC7(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT, GL_RENDERBUFFER, gl->hw_render_rb_ds);
      else
         FUNC7(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, gl->hw_render_rb_ds);
   }

   status = FUNC5(GL_FRAMEBUFFER);
   if (status != GL_FRAMEBUFFER_COMPLETE)
   {
      FUNC0("[GLCore]: Framebuffer is not complete.\n");
      FUNC15(gl, false);
      return false;
   }

   if (hwr->depth && hwr->stencil)
      FUNC6(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
   else if (hwr->depth)
      FUNC6(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
   else
      FUNC6(GL_COLOR_BUFFER_BIT);

   gl->hw_render_enable = true;
   gl->hw_render_max_width = width;
   gl->hw_render_max_height = height;
   FUNC4(GL_TEXTURE_2D, 0);
   FUNC2(GL_FRAMEBUFFER, 0);
   FUNC15(gl, false);

   return true;
}