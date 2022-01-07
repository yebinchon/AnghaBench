
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_FLOAT ;
 int GL_RGB ;
 int GL_TEXTURE_2D ;
 int GL_TRIANGLE_STRIP ;
 int GL_UNSIGNED_SHORT_5_6_5 ;
 int edpy ;
 int eglSwapBuffers (int ,int ) ;
 int esfc ;
 int glDrawArrays (int ,int ,int) ;
 int glTexCoordPointer (int,int ,int ,float*) ;
 int glTexSubImage2D (int ,int ,int ,int ,int,int,int ,int ,void const*) ;
 int glVertexPointer (int,int ,int ,int ) ;
 scalar_t__ gl_have_error (char*) ;
 scalar_t__ gles_have_error (char*) ;
 float* texture ;
 int vertices ;

int gl_flip(const void *fb, int w, int h)
{
 static int old_w, old_h;

 if (fb != ((void*)0)) {
  if (w != old_w || h != old_h) {
   float f_w = (float)w / 1024.0f;
   float f_h = (float)h / 512.0f;
   texture[1*2 + 0] = f_w;
   texture[2*2 + 1] = f_h;
   texture[3*2 + 0] = f_w;
   texture[3*2 + 1] = f_h;
   old_w = w;
   old_h = h;
  }

  glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, w, h,
   GL_RGB, GL_UNSIGNED_SHORT_5_6_5, fb);
  if (gl_have_error("glTexSubImage2D"))
   return -1;
 }

 glVertexPointer(3, GL_FLOAT, 0, vertices);
 glTexCoordPointer(2, GL_FLOAT, 0, texture);
 glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

 if (gl_have_error("glDrawArrays"))
  return -1;

 eglSwapBuffers(edpy, esfc);
 if (gles_have_error("eglSwapBuffers"))
  return -1;

 return 0;
}
