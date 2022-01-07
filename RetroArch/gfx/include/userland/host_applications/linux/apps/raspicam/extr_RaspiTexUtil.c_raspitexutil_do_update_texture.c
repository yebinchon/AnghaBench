
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int EGLenum ;
typedef scalar_t__ EGLImageKHR ;
typedef int EGLDisplay ;
typedef scalar_t__ EGLClientBuffer ;


 int EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_IMAGE_KHR ;
 int GLCHK (int ) ;
 int GL_TEXTURE_EXTERNAL_OES ;
 int VCOS_FUNCTION ;
 scalar_t__ eglCreateImageKHR (int ,int ,int ,scalar_t__,int *) ;
 int eglDestroyImageKHR (int ,scalar_t__) ;
 int glBindTexture (int ,int ) ;
 int glEGLImageTargetTexture2DOES (int ,scalar_t__) ;
 int vcos_log_trace (char*,int ,unsigned int) ;

int raspitexutil_do_update_texture(EGLDisplay display, EGLenum target,
                                   EGLClientBuffer mm_buf, GLuint *texture, EGLImageKHR *egl_image)
{
   vcos_log_trace("%s: mm_buf %u", VCOS_FUNCTION, (unsigned) mm_buf);
   GLCHK(glBindTexture(GL_TEXTURE_EXTERNAL_OES, *texture));
   if (*egl_image != EGL_NO_IMAGE_KHR)
   {

      eglDestroyImageKHR(display, *egl_image);
      *egl_image = EGL_NO_IMAGE_KHR;
   }

   *egl_image = eglCreateImageKHR(display, EGL_NO_CONTEXT, target, mm_buf, ((void*)0));
   GLCHK(glEGLImageTargetTexture2DOES(GL_TEXTURE_EXTERNAL_OES, *egl_image));

   return 0;
}
