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
struct TYPE_3__ {scalar_t__ ms_rb_ds; scalar_t__ ms_rb_color; scalar_t__ ms_fbo; } ;
typedef  TYPE_1__ fft_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_DEPTH24_STENCIL8 ; 
 int /*<<< orphan*/  GL_DEPTH_STENCIL_ATTACHMENT ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 scalar_t__ GL_FRAMEBUFFER_COMPLETE ; 
 int /*<<< orphan*/  GL_RENDERBUFFER ; 
 int /*<<< orphan*/  GL_RGBA8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

void FUNC9(fft_t *fft, unsigned width, unsigned height, unsigned samples)
{
   if (fft->ms_rb_color)
      FUNC4(1, &fft->ms_rb_color);
   fft->ms_rb_color = 0;
   if (fft->ms_rb_ds)
      FUNC4(1, &fft->ms_rb_ds);
   fft->ms_rb_ds    = 0;
   if (fft->ms_fbo)
      FUNC3(1, &fft->ms_fbo);
   fft->ms_fbo      = 0;

   if (samples > 1)
   {
      FUNC7(1, &fft->ms_rb_color);
      FUNC7(1, &fft->ms_rb_ds);
      FUNC6 (1, &fft->ms_fbo);

      FUNC1(GL_RENDERBUFFER, fft->ms_rb_color);
      FUNC8(GL_RENDERBUFFER, samples,
            GL_RGBA8, width, height);
      FUNC1(GL_RENDERBUFFER, fft->ms_rb_ds);
      FUNC8(GL_RENDERBUFFER, samples,
            GL_DEPTH24_STENCIL8, width, height);
      FUNC1(GL_RENDERBUFFER, 0);

      FUNC0(GL_FRAMEBUFFER, fft->ms_fbo);
      FUNC5(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
            GL_RENDERBUFFER, fft->ms_rb_color);
      FUNC5(GL_FRAMEBUFFER, GL_DEPTH_STENCIL_ATTACHMENT,
            GL_RENDERBUFFER, fft->ms_rb_ds);
      if (FUNC2(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
         FUNC9(fft, 0, 0, 0);
   }

   FUNC0(GL_FRAMEBUFFER, 0);
}