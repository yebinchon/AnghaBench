#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/ ** stub_matrix4x4 ;
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
struct TYPE_6__ {int /*<<< orphan*/  elems; int /*<<< orphan*/  vao; int /*<<< orphan*/  prog; } ;
struct TYPE_5__ {int /*<<< orphan*/  tex; } ;
struct TYPE_7__ {float block_size; scalar_t__ ms_fbo; TYPE_2__ block; TYPE_1__ blur; int /*<<< orphan*/  output_ptr; } ;
typedef  TYPE_3__ fft_t ;
typedef  scalar_t__ GLuint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  GL_COLOR_ATTACHMENT0 129 
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
#define  GL_DEPTH_STENCIL_ATTACHMENT 128 
 int /*<<< orphan*/  GL_DRAW_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_READ_FRAMEBUFFER ; 
 int GL_STENCIL_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 int /*<<< orphan*/  GL_UNSIGNED_INT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ M_HALF_PI ; 
 int M_PI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC20 (float*,float*) ; 

void FUNC21(fft_t *fft, GLuint backbuffer, unsigned width, unsigned height)
{
   vec3_t eye, center, up;
   stub_matrix4x4 mvp_real;
   math_matrix_4x4 mvp_lookat, mvp, mvp_persp;

   eye[0]               = 0.0f;
   eye[1]               = 80.0f;
   eye[2]               = -60.0f;

   up[0]                = 0.0f;
   up[1]                = 1.0f;
   up[2]                = 0.0f;

   center[0]            = 0.0f;
   center[1]            = 0.0f;
   center[2]            = 1.0f;

   FUNC20(center, eye);

   FUNC19(mvp_persp, (float)M_HALF_PI, (float)width / height, 1.0f, 500.0f);
   FUNC17(mvp_lookat, eye, center, up);
   FUNC18(mvp, mvp_lookat, mvp_persp);

   /* Render scene. */
   FUNC2(GL_FRAMEBUFFER, fft->ms_fbo ? fft->ms_fbo : backbuffer);
   FUNC16(0, 0, width, height);
   FUNC7(0.1f, 0.15f, 0.1f, 1.0f);
   FUNC6(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

   FUNC15(fft->block.prog);

   mvp_real[0][0] = FUNC1(mvp, 0, 0);
   mvp_real[0][1] = FUNC1(mvp, 0, 1);
   mvp_real[0][2] = FUNC1(mvp, 0, 2);
   mvp_real[0][3] = FUNC1(mvp, 0, 3);
   mvp_real[1][0] = FUNC1(mvp, 1, 0);
   mvp_real[1][1] = FUNC1(mvp, 1, 1);
   mvp_real[1][2] = FUNC1(mvp, 1, 2);
   mvp_real[1][3] = FUNC1(mvp, 1, 3);
   mvp_real[2][0] = FUNC1(mvp, 2, 0);
   mvp_real[2][1] = FUNC1(mvp, 2, 1);
   mvp_real[2][2] = FUNC1(mvp, 2, 2);
   mvp_real[2][3] = FUNC1(mvp, 2, 3);
   mvp_real[3][0] = FUNC1(mvp, 3, 0);
   mvp_real[3][1] = FUNC1(mvp, 3, 1);
   mvp_real[3][2] = FUNC1(mvp, 3, 2);
   mvp_real[3][3] = FUNC1(mvp, 3, 3);

   FUNC14(FUNC9(fft->block.prog, "uMVP"),
         1, GL_FALSE, (&mvp_real[0][0]));

   FUNC12(FUNC9(fft->block.prog, "uOffset"),
         ((-(int)(fft->block_size)) + 1) / 2, fft->output_ptr);
   FUNC13(FUNC9(fft->block.prog, "uHeightmapParams"),
         -(fft->block_size - 1.0f) / 2.0f, 0.0f, 3.0f, 2.0f);
   FUNC11(FUNC9(fft->block.prog, "uAngleScale"),
         M_PI / ((fft->block_size - 1) / 2));

   FUNC4(fft->block.vao);
   FUNC3(GL_TEXTURE_2D, fft->blur.tex);
   FUNC8(GL_TRIANGLE_STRIP, fft->block.elems, GL_UNSIGNED_INT, NULL);
   FUNC4(0);
   FUNC15(0);

   if (fft->ms_fbo)
   {
      static const GLenum attachments[] = { GL_COLOR_ATTACHMENT0, GL_DEPTH_STENCIL_ATTACHMENT };

      FUNC2(GL_READ_FRAMEBUFFER, fft->ms_fbo);
      FUNC2(GL_DRAW_FRAMEBUFFER, backbuffer);
      FUNC5(0, 0, width, height, 0, 0, width, height,
            GL_COLOR_BUFFER_BIT, GL_NEAREST);

      FUNC2(GL_FRAMEBUFFER, fft->ms_fbo);
      FUNC10(GL_FRAMEBUFFER, 2, attachments);
      FUNC0();
   }

   FUNC2(GL_FRAMEBUFFER, 0);
   FUNC0();
}