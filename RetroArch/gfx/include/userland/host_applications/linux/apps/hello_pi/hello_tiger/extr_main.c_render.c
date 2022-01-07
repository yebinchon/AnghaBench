
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EGL_SUCCESS ;
 int PS_render (int ) ;
 int VG_CLEAR_COLOR ;
 scalar_t__ VG_NO_ERROR ;
 int assert (int) ;
 scalar_t__ eglGetError () ;
 int eglSwapBuffers (int ,int ) ;
 int egldisplay ;
 int eglsurface ;
 int renderHeight ;
 int renderWidth ;
 int rotateN ;
 int tiger ;
 int tigerMaxX ;
 int tigerMaxY ;
 int tigerMinX ;
 int tigerMinY ;
 int vgClear (int ,int ,int,int) ;
 scalar_t__ vgGetError () ;
 int vgLoadIdentity () ;
 int vgRotate (int ) ;
 int vgScale (float,float) ;
 int vgSetfv (int ,int,float*) ;
 int vgTranslate (int,int) ;

void render(int w, int h)
{

 if(renderWidth != w || renderHeight != h)

 {
  float clearColor[4] = {1,1,1,1};
  float scale = w / (tigerMaxX - tigerMinX);

  eglSwapBuffers(egldisplay, eglsurface);

  vgSetfv(VG_CLEAR_COLOR, 4, clearColor);
  vgClear(0, 0, w, h);

  vgLoadIdentity();





  vgScale(scale, scale);
  vgTranslate(-tigerMinX, -tigerMinY + 0.5f * (h / scale - (tigerMaxY - tigerMinY)));

  PS_render(tiger);
  assert(vgGetError() == VG_NO_ERROR);

  renderWidth = w;
  renderHeight = h;
 }

 eglSwapBuffers(egldisplay, eglsurface);
 assert(eglGetError() == EGL_SUCCESS);

}
