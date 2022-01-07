
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int log_info ;
typedef int fft_t ;
typedef int GLuint ;
typedef int GLsizei ;
typedef scalar_t__ GLint ;
typedef int GLenum ;
typedef int GLchar ;


 int GL_COMPILE_STATUS ;
 int RETRO_LOG_ERROR ;
 int glCompileShader (int ) ;
 int glCreateShader (int ) ;
 int glGetShaderInfoLog (int ,int,int *,char*) ;
 int glGetShaderiv (int ,int ,scalar_t__*) ;
 int glShaderSource (int ,int,int const**,int *) ;
 int log_cb (int ,char*,...) ;

__attribute__((used)) static GLuint fft_compile_shader(fft_t *fft, GLenum type, const char *source)
{
   GLint status = 0;
   GLuint shader = glCreateShader(type);

   glShaderSource(shader, 1, (const GLchar**)&source, ((void*)0));
   glCompileShader(shader);

   glGetShaderiv(shader, GL_COMPILE_STATUS, &status);

   if (!status)
   {
      char log_info[8 * 1024];
      GLsizei log_len;

      log_cb(RETRO_LOG_ERROR, "Failed to compile.\n");
      glGetShaderInfoLog(shader, sizeof(log_info), &log_len, log_info);
      log_cb(RETRO_LOG_ERROR, "ERROR: %s\n", log_info);
      return 0;
   }

   return shader;
}
