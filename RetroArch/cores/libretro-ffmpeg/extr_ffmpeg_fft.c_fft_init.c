
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int size; int depth; unsigned int steps; int pbo; TYPE_1__* passes; int blur; int resolve; int output; int input_tex; int window_tex; void* prog_blur; void* prog_resolve; void* prog_complex; void* prog_real; } ;
typedef TYPE_2__ fft_t ;
struct TYPE_8__ {int parameter_tex; int target; } ;
typedef int GLushort ;
typedef int GLuint ;
typedef int GLshort ;
typedef float GLfloat ;


 int GL_CHECK_ERROR () ;
 int GL_DYNAMIC_DRAW ;
 int GL_LINEAR_MIPMAP_LINEAR ;
 int GL_NEAREST ;
 int GL_PIXEL_UNPACK_BUFFER ;
 int GL_R16UI ;
 int GL_RED_INTEGER ;
 int GL_RG16I ;
 int GL_RG32UI ;
 int GL_RGBA8 ;
 int GL_RG_INTEGER ;
 int GL_TEXTURE_2D ;
 int GL_UNSIGNED_INT ;
 int GL_UNSIGNED_SHORT ;
 int KAISER_BETA ;
 int MAX (int,int) ;
 scalar_t__ calloc (int,int) ;
 int fft_build_params (TYPE_2__*,int *,unsigned int,int) ;
 void* fft_compile_program (TYPE_2__*,int ,int ) ;
 int fft_fragment_program_blur ;
 int fft_fragment_program_complex ;
 int fft_fragment_program_real ;
 int fft_fragment_program_resolve ;
 int fft_init_target (TYPE_2__*,int *,int ,int,int,int,int ,int ) ;
 int fft_init_texture (TYPE_2__*,int *,int ,int,int,int,int ,int ) ;
 int fft_vertex_program ;
 int free (int *) ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glBufferData (int ,int,int ,int ) ;
 int glGenBuffers (int,int *) ;
 int glGetUniformLocation (void*,char*) ;
 int glTexSubImage2D (int ,int ,int ,int ,unsigned int,int,int ,int ,int *) ;
 int glUniform1i (int ,int) ;
 int glUniform4fv (int ,int,float const*) ;
 int glUseProgram (void*) ;
 double kaiser_window_function (double,int ) ;
 int log2i (int ) ;
 int round (int) ;

__attribute__((used)) static void fft_init(fft_t *fft)
{
   unsigned i;
   double window_mod;
   GLushort *window = ((void*)0);
   static const GLfloat unity[] = { 0.0f, 0.0f, 1.0f, 1.0f };

   fft->prog_real = fft_compile_program(fft, fft_vertex_program, fft_fragment_program_real);
   fft->prog_complex = fft_compile_program(fft, fft_vertex_program, fft_fragment_program_complex);
   fft->prog_resolve = fft_compile_program(fft, fft_vertex_program, fft_fragment_program_resolve);
   fft->prog_blur = fft_compile_program(fft, fft_vertex_program, fft_fragment_program_blur);
   GL_CHECK_ERROR();

   glUseProgram(fft->prog_real);
   glUniform1i(glGetUniformLocation(fft->prog_real, "sTexture"), 0);
   glUniform1i(glGetUniformLocation(fft->prog_real, "sParameterTexture"), 1);
   glUniform1i(glGetUniformLocation(fft->prog_real, "sWindow"), 2);
   glUniform4fv(glGetUniformLocation(fft->prog_real, "uOffsetScale"), 1, unity);

   glUseProgram(fft->prog_complex);
   glUniform1i(glGetUniformLocation(fft->prog_complex, "sTexture"), 0);
   glUniform1i(glGetUniformLocation(fft->prog_complex, "sParameterTexture"), 1);
   glUniform4fv(glGetUniformLocation(fft->prog_complex, "uOffsetScale"), 1, unity);

   glUseProgram(fft->prog_resolve);
   glUniform1i(glGetUniformLocation(fft->prog_resolve, "sFFT"), 0);
   glUniform4fv(glGetUniformLocation(fft->prog_resolve, "uOffsetScale"), 1, unity);

   glUseProgram(fft->prog_blur);
   glUniform1i(glGetUniformLocation(fft->prog_blur, "sHeight"), 0);
   glUniform4fv(glGetUniformLocation(fft->prog_blur, "uOffsetScale"), 1, unity);

   GL_CHECK_ERROR();

   fft_init_texture(fft, &fft->window_tex, GL_R16UI,
         fft->size, 1, 1, GL_NEAREST, GL_NEAREST);
   GL_CHECK_ERROR();

   window = (GLushort*)calloc(fft->size, sizeof(GLushort));

   window_mod = 1.0 / kaiser_window_function(0.0, KAISER_BETA);

   for (i = 0; i < fft->size; i++)
   {
      double phase = (double)(i - (int)(fft->size) / 2) / ((int)(fft->size) / 2);
      double w = kaiser_window_function(phase, KAISER_BETA);
      window[i] = round(0xffff * w * window_mod);
   }
   glBindTexture(GL_TEXTURE_2D, fft->window_tex);
   glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0,
         fft->size, 1, GL_RED_INTEGER, GL_UNSIGNED_SHORT, &window[0]);
   glBindTexture(GL_TEXTURE_2D, 0);

   GL_CHECK_ERROR();
   fft_init_texture(fft, &fft->input_tex, GL_RG16I,
         fft->size, 1, 1, GL_NEAREST, GL_NEAREST);
   fft_init_target(fft, &fft->output, GL_RG32UI,
         fft->size, fft->depth, 1, GL_NEAREST, GL_NEAREST);
   fft_init_target(fft, &fft->resolve, GL_RGBA8,
         fft->size, fft->depth, 1, GL_NEAREST, GL_NEAREST);
   fft_init_target(fft, &fft->blur, GL_RGBA8,
         fft->size, fft->depth,
         log2i(MAX(fft->size, fft->depth)) + 1,
         GL_NEAREST, GL_LINEAR_MIPMAP_LINEAR);

   GL_CHECK_ERROR();

   for (i = 0; i < fft->steps; i++)
   {
      GLuint *param_buffer = ((void*)0);
      fft_init_target(fft, &fft->passes[i].target,
            GL_RG32UI, fft->size, 1, 1, GL_NEAREST, GL_NEAREST);
      fft_init_texture(fft, &fft->passes[i].parameter_tex,
            GL_RG32UI, fft->size, 1, 1, GL_NEAREST, GL_NEAREST);

      param_buffer = (GLuint*)calloc(2 * fft->size, sizeof(GLuint));

      fft_build_params(fft, &param_buffer[0], i, fft->size);

      glBindTexture(GL_TEXTURE_2D, fft->passes[i].parameter_tex);
      glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0,
            fft->size, 1, GL_RG_INTEGER, GL_UNSIGNED_INT, &param_buffer[0]);
      glBindTexture(GL_TEXTURE_2D, 0);

      free(param_buffer);
   }

   GL_CHECK_ERROR();
   glGenBuffers(1, &fft->pbo);
   glBindBuffer(GL_PIXEL_UNPACK_BUFFER, fft->pbo);
   glBufferData(GL_PIXEL_UNPACK_BUFFER,
         fft->size * 2 * sizeof(GLshort), 0, GL_DYNAMIC_DRAW);
   glBindBuffer(GL_PIXEL_UNPACK_BUFFER, 0);

   free(window);
}
