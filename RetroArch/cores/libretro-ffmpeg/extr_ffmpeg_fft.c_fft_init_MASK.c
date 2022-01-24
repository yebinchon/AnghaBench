#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int size; int depth; unsigned int steps; int /*<<< orphan*/  pbo; TYPE_1__* passes; int /*<<< orphan*/  blur; int /*<<< orphan*/  resolve; int /*<<< orphan*/  output; int /*<<< orphan*/  input_tex; int /*<<< orphan*/  window_tex; void* prog_blur; void* prog_resolve; void* prog_complex; void* prog_real; } ;
typedef  TYPE_2__ fft_t ;
struct TYPE_8__ {int /*<<< orphan*/  parameter_tex; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  GLushort ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLshort ;
typedef  float GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GL_DYNAMIC_DRAW ; 
 int /*<<< orphan*/  GL_LINEAR_MIPMAP_LINEAR ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_PIXEL_UNPACK_BUFFER ; 
 int /*<<< orphan*/  GL_R16UI ; 
 int /*<<< orphan*/  GL_RED_INTEGER ; 
 int /*<<< orphan*/  GL_RG16I ; 
 int /*<<< orphan*/  GL_RG32UI ; 
 int /*<<< orphan*/  GL_RGBA8 ; 
 int /*<<< orphan*/  GL_RG_INTEGER ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_UNSIGNED_INT ; 
 int /*<<< orphan*/  GL_UNSIGNED_SHORT ; 
 int /*<<< orphan*/  KAISER_BETA ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int,int) ; 
 void* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fft_fragment_program_blur ; 
 int /*<<< orphan*/  fft_fragment_program_complex ; 
 int /*<<< orphan*/  fft_fragment_program_real ; 
 int /*<<< orphan*/  fft_fragment_program_resolve ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fft_vertex_program ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (void*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,float const*) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 double FUNC17 (double,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static void FUNC20(fft_t *fft)
{
   unsigned i;
   double window_mod;
   GLushort *window             = NULL;
   static const GLfloat unity[] = { 0.0f, 0.0f, 1.0f, 1.0f };

   fft->prog_real    = FUNC4(fft, fft_vertex_program, fft_fragment_program_real);
   fft->prog_complex = FUNC4(fft, fft_vertex_program, fft_fragment_program_complex);
   fft->prog_resolve = FUNC4(fft, fft_vertex_program, fft_fragment_program_resolve);
   fft->prog_blur    = FUNC4(fft, fft_vertex_program, fft_fragment_program_blur);
   FUNC0();

   FUNC16(fft->prog_real);
   FUNC14(FUNC12(fft->prog_real, "sTexture"), 0);
   FUNC14(FUNC12(fft->prog_real, "sParameterTexture"), 1);
   FUNC14(FUNC12(fft->prog_real, "sWindow"), 2);
   FUNC15(FUNC12(fft->prog_real, "uOffsetScale"), 1, unity);

   FUNC16(fft->prog_complex);
   FUNC14(FUNC12(fft->prog_complex, "sTexture"), 0);
   FUNC14(FUNC12(fft->prog_complex, "sParameterTexture"), 1);
   FUNC15(FUNC12(fft->prog_complex, "uOffsetScale"), 1, unity);

   FUNC16(fft->prog_resolve);
   FUNC14(FUNC12(fft->prog_resolve, "sFFT"), 0);
   FUNC15(FUNC12(fft->prog_resolve, "uOffsetScale"), 1, unity);

   FUNC16(fft->prog_blur);
   FUNC14(FUNC12(fft->prog_blur, "sHeight"), 0);
   FUNC15(FUNC12(fft->prog_blur, "uOffsetScale"), 1, unity);

   FUNC0();

   FUNC6(fft, &fft->window_tex, GL_R16UI,
         fft->size, 1, 1, GL_NEAREST, GL_NEAREST);
   FUNC0();

   window = (GLushort*)FUNC2(fft->size, sizeof(GLushort));

   window_mod = 1.0 / FUNC17(0.0, KAISER_BETA);

   for (i = 0; i < fft->size; i++)
   {
      double phase = (double)(i - (int)(fft->size) / 2) / ((int)(fft->size) / 2);
      double     w = FUNC17(phase, KAISER_BETA);
      window[i]    = FUNC19(0xffff * w * window_mod);
   }
   FUNC9(GL_TEXTURE_2D, fft->window_tex);
   FUNC13(GL_TEXTURE_2D, 0, 0, 0,
         fft->size, 1, GL_RED_INTEGER, GL_UNSIGNED_SHORT, &window[0]);
   FUNC9(GL_TEXTURE_2D, 0);

   FUNC0();
   FUNC6(fft, &fft->input_tex, GL_RG16I,
         fft->size, 1, 1, GL_NEAREST, GL_NEAREST);
   FUNC5(fft, &fft->output, GL_RG32UI,
         fft->size, fft->depth, 1, GL_NEAREST, GL_NEAREST);
   FUNC5(fft, &fft->resolve, GL_RGBA8,
         fft->size, fft->depth, 1, GL_NEAREST, GL_NEAREST);
   FUNC5(fft, &fft->blur, GL_RGBA8,
         fft->size, fft->depth,
         FUNC18(FUNC1(fft->size, fft->depth)) + 1,
         GL_NEAREST, GL_LINEAR_MIPMAP_LINEAR);

   FUNC0();

   for (i = 0; i < fft->steps; i++)
   {
      GLuint *param_buffer = NULL;
      FUNC5(fft, &fft->passes[i].target,
            GL_RG32UI, fft->size, 1, 1, GL_NEAREST, GL_NEAREST);
      FUNC6(fft, &fft->passes[i].parameter_tex,
            GL_RG32UI, fft->size, 1, 1, GL_NEAREST, GL_NEAREST);

      param_buffer = (GLuint*)FUNC2(2 * fft->size, sizeof(GLuint));

      FUNC3(fft, &param_buffer[0], i, fft->size);

      FUNC9(GL_TEXTURE_2D, fft->passes[i].parameter_tex);
      FUNC13(GL_TEXTURE_2D, 0, 0, 0,
            fft->size, 1, GL_RG_INTEGER, GL_UNSIGNED_INT, &param_buffer[0]);
      FUNC9(GL_TEXTURE_2D, 0);

      FUNC7(param_buffer);
   }

   FUNC0();
   FUNC11(1, &fft->pbo);
   FUNC8(GL_PIXEL_UNPACK_BUFFER, fft->pbo);
   FUNC10(GL_PIXEL_UNPACK_BUFFER,
         fft->size * 2 * sizeof(GLshort), 0, GL_DYNAMIC_DRAW);
   FUNC8(GL_PIXEL_UNPACK_BUFFER, 0);

   FUNC7(window);
}