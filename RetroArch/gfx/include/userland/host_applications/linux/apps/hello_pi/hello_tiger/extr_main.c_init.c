
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NativeWindowType ;
typedef int EGLint ;




 int EGL_DEFAULT_DISPLAY ;




 int EGL_OPENVG_API ;


 scalar_t__ EGL_SUCCESS ;


 int PS_construct (int ,int ,int ,int ) ;
 int assert (int) ;
 int eglBindAPI (int ) ;
 int eglChooseConfig (int ,int const*,int *,int,int*) ;
 int eglCreateContext (int ,int ,int *,int *) ;
 int eglCreateWindowSurface (int ,int ,int ,int *) ;
 int eglGetDisplay (int ) ;
 scalar_t__ eglGetError () ;
 int eglInitialize (int ,int *,int *) ;
 int eglMakeCurrent (int ,int ,int ,int ) ;
 int eglconfig ;
 int eglcontext ;
 int egldisplay ;
 int eglsurface ;
 int tiger ;
 int tigerCommandCount ;
 int tigerCommands ;
 int tigerPointCount ;
 int tigerPoints ;

void init(NativeWindowType window)
{
 static const EGLint s_configAttribs[] =
 {
  131, 8,
  134, 8,
  136, 8,
  137, 8,
  133, 135,
  129, 128,
  130, 1,
  132
 };
 EGLint numconfigs;

 egldisplay = eglGetDisplay(EGL_DEFAULT_DISPLAY);
 eglInitialize(egldisplay, ((void*)0), ((void*)0));
 assert(eglGetError() == EGL_SUCCESS);
 eglBindAPI(EGL_OPENVG_API);

 eglChooseConfig(egldisplay, s_configAttribs, &eglconfig, 1, &numconfigs);
 assert(eglGetError() == EGL_SUCCESS);
 assert(numconfigs == 1);

 eglsurface = eglCreateWindowSurface(egldisplay, eglconfig, window, ((void*)0));
 assert(eglGetError() == EGL_SUCCESS);
 eglcontext = eglCreateContext(egldisplay, eglconfig, ((void*)0), ((void*)0));
 assert(eglGetError() == EGL_SUCCESS);
 eglMakeCurrent(egldisplay, eglsurface, eglsurface, eglcontext);
 assert(eglGetError() == EGL_SUCCESS);

 tiger = PS_construct(tigerCommands, tigerCommandCount, tigerPoints, tigerPointCount);
}
