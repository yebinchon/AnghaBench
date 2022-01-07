
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VIDTEX_T ;
typedef scalar_t__ GLenum ;


 scalar_t__ GL_NO_ERROR ;
 int SVP_STOP_ERROR ;
 scalar_t__ glGetError () ;
 int vcos_log_error (char*,int ,scalar_t__) ;
 int vidtex_stop_cb (int *,int ) ;

__attribute__((used)) static void vidtex_check_gl(VIDTEX_T *vt, uint32_t line)
{
   GLenum error = glGetError();
   int abort = 0;
   while (error != GL_NO_ERROR)
   {
      vcos_log_error("GL error: line %d error 0x%04x", line, error);
      abort = 1;
      error = glGetError();
   }
   if (abort)
      vidtex_stop_cb(vt, SVP_STOP_ERROR);
}
