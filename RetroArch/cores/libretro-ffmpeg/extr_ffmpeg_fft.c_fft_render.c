
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
typedef int ** stub_matrix4x4 ;
typedef int math_matrix_4x4 ;
struct TYPE_6__ {int elems; int vao; int prog; } ;
struct TYPE_5__ {int tex; } ;
struct TYPE_7__ {float block_size; scalar_t__ ms_fbo; TYPE_2__ block; TYPE_1__ blur; int output_ptr; } ;
typedef TYPE_3__ fft_t ;
typedef scalar_t__ GLuint ;
typedef int GLenum ;


 int GL_CHECK_ERROR () ;

 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;

 int GL_DRAW_FRAMEBUFFER ;
 int GL_FALSE ;
 int GL_FRAMEBUFFER ;
 int GL_NEAREST ;
 int GL_READ_FRAMEBUFFER ;
 int GL_STENCIL_BUFFER_BIT ;
 int GL_TEXTURE_2D ;
 int GL_TRIANGLE_STRIP ;
 int GL_UNSIGNED_INT ;
 int MAT_ELEM_4X4 (int ,int,int) ;
 scalar_t__ M_HALF_PI ;
 int M_PI ;
 int glBindFramebuffer (int ,scalar_t__) ;
 int glBindTexture (int ,int ) ;
 int glBindVertexArray (int ) ;
 int glBlitFramebuffer (int ,int ,unsigned int,unsigned int,int ,int ,unsigned int,unsigned int,int,int ) ;
 int glClear (int) ;
 int glClearColor (float,float,float,float) ;
 int glDrawElements (int ,int ,int ,int *) ;
 int glGetUniformLocation (int ,char*) ;
 int glInvalidateFramebuffer (int ,int,int const*) ;
 int glUniform1f (int ,int) ;
 int glUniform2i (int ,int,int ) ;
 int glUniform4f (int ,float,float,float,float) ;
 int glUniformMatrix4fv (int ,int,int ,int *) ;
 int glUseProgram (int ) ;
 int glViewport (int ,int ,unsigned int,unsigned int) ;
 int matrix_4x4_lookat (int ,float*,float*,float*) ;
 int matrix_4x4_multiply (int ,int ,int ) ;
 int matrix_4x4_projection (int ,float,float,float,float) ;
 int vec3_add (float*,float*) ;

void fft_render(fft_t *fft, GLuint backbuffer, unsigned width, unsigned height)
{
   vec3_t eye, center, up;
   stub_matrix4x4 mvp_real;
   math_matrix_4x4 mvp_lookat, mvp, mvp_persp;

   eye[0] = 0.0f;
   eye[1] = 80.0f;
   eye[2] = -60.0f;

   up[0] = 0.0f;
   up[1] = 1.0f;
   up[2] = 0.0f;

   center[0] = 0.0f;
   center[1] = 0.0f;
   center[2] = 1.0f;

   vec3_add(center, eye);

   matrix_4x4_projection(mvp_persp, (float)M_HALF_PI, (float)width / height, 1.0f, 500.0f);
   matrix_4x4_lookat(mvp_lookat, eye, center, up);
   matrix_4x4_multiply(mvp, mvp_lookat, mvp_persp);


   glBindFramebuffer(GL_FRAMEBUFFER, fft->ms_fbo ? fft->ms_fbo : backbuffer);
   glViewport(0, 0, width, height);
   glClearColor(0.1f, 0.15f, 0.1f, 1.0f);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

   glUseProgram(fft->block.prog);

   mvp_real[0][0] = MAT_ELEM_4X4(mvp, 0, 0);
   mvp_real[0][1] = MAT_ELEM_4X4(mvp, 0, 1);
   mvp_real[0][2] = MAT_ELEM_4X4(mvp, 0, 2);
   mvp_real[0][3] = MAT_ELEM_4X4(mvp, 0, 3);
   mvp_real[1][0] = MAT_ELEM_4X4(mvp, 1, 0);
   mvp_real[1][1] = MAT_ELEM_4X4(mvp, 1, 1);
   mvp_real[1][2] = MAT_ELEM_4X4(mvp, 1, 2);
   mvp_real[1][3] = MAT_ELEM_4X4(mvp, 1, 3);
   mvp_real[2][0] = MAT_ELEM_4X4(mvp, 2, 0);
   mvp_real[2][1] = MAT_ELEM_4X4(mvp, 2, 1);
   mvp_real[2][2] = MAT_ELEM_4X4(mvp, 2, 2);
   mvp_real[2][3] = MAT_ELEM_4X4(mvp, 2, 3);
   mvp_real[3][0] = MAT_ELEM_4X4(mvp, 3, 0);
   mvp_real[3][1] = MAT_ELEM_4X4(mvp, 3, 1);
   mvp_real[3][2] = MAT_ELEM_4X4(mvp, 3, 2);
   mvp_real[3][3] = MAT_ELEM_4X4(mvp, 3, 3);

   glUniformMatrix4fv(glGetUniformLocation(fft->block.prog, "uMVP"),
         1, GL_FALSE, (&mvp_real[0][0]));

   glUniform2i(glGetUniformLocation(fft->block.prog, "uOffset"),
         ((-(int)(fft->block_size)) + 1) / 2, fft->output_ptr);
   glUniform4f(glGetUniformLocation(fft->block.prog, "uHeightmapParams"),
         -(fft->block_size - 1.0f) / 2.0f, 0.0f, 3.0f, 2.0f);
   glUniform1f(glGetUniformLocation(fft->block.prog, "uAngleScale"),
         M_PI / ((fft->block_size - 1) / 2));

   glBindVertexArray(fft->block.vao);
   glBindTexture(GL_TEXTURE_2D, fft->blur.tex);
   glDrawElements(GL_TRIANGLE_STRIP, fft->block.elems, GL_UNSIGNED_INT, ((void*)0));
   glBindVertexArray(0);
   glUseProgram(0);

   if (fft->ms_fbo)
   {
      static const GLenum attachments[] = { 129, 128 };

      glBindFramebuffer(GL_READ_FRAMEBUFFER, fft->ms_fbo);
      glBindFramebuffer(GL_DRAW_FRAMEBUFFER, backbuffer);
      glBlitFramebuffer(0, 0, width, height, 0, 0, width, height,
            GL_COLOR_BUFFER_BIT, GL_NEAREST);

      glBindFramebuffer(GL_FRAMEBUFFER, fft->ms_fbo);
      glInvalidateFramebuffer(GL_FRAMEBUFFER, 2, attachments);
      GL_CHECK_ERROR();
   }

   glBindFramebuffer(GL_FRAMEBUFFER, 0);
   GL_CHECK_ERROR();
}
