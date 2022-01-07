
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef scalar_t__ EGLint ;
typedef int EGLNativeWindowType ;
typedef int EGLNativeDisplayType ;
typedef int * EGLConfig ;


 scalar_t__ EGL_NONE ;
 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_DISPLAY ;
 scalar_t__ EGL_NO_SURFACE ;
 int GL_CULL_FACE ;
 int GL_CW ;
 int GL_LINEAR ;
 int GL_RGB ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_UNSIGNED_SHORT_5_6_5 ;
 int GL_VERTEX_ARRAY ;
 void* calloc (int,int) ;
 scalar_t__ ectxt ;
 scalar_t__ edpy ;
 int eglChooseConfig (scalar_t__,scalar_t__*,int **,int,scalar_t__*) ;
 scalar_t__ eglCreateContext (scalar_t__,int *,scalar_t__,int *) ;
 scalar_t__ eglCreateWindowSurface (scalar_t__,int *,int ,int *) ;
 scalar_t__ eglGetDisplay (int ) ;
 int eglGetError () ;
 int eglInitialize (scalar_t__,int *,int *) ;
 int eglMakeCurrent (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ esfc ;
 int fprintf (int ,char*,...) ;
 int free (void*) ;
 int glBindTexture (int ,int ) ;
 int glEnable (int ) ;
 int glEnableClientState (int ) ;
 int glFrontFace (int ) ;
 int glGenTextures (int,int *) ;
 int glLoadIdentity () ;
 int glTexImage2D (int ,int ,int ,int,int,int ,int ,int ,void*) ;
 int glTexParameterf (int ,int ,int ) ;
 void* gl_es_display ;
 void* gl_es_surface ;
 scalar_t__ gl_have_error (char*) ;
 int gl_platform_init (void**,void**,int*) ;
 int stderr ;

int gl_init(void *display, void *window, int *quirks)
{
 EGLConfig ecfg = ((void*)0);
 GLuint texture_name = 0;
 void *tmp_texture_mem = ((void*)0);
 EGLint num_config;
 int retval = -1;
 int ret;
 EGLint attr[] =
 {
  EGL_NONE
 };

 ret = gl_platform_init(&display, &window, quirks);
 if (ret != 0) {
  fprintf(stderr, "gl_platform_init failed with %d\n", ret);
  goto out;
 }

 tmp_texture_mem = calloc(1, 1024 * 512 * 2);
 if (tmp_texture_mem == ((void*)0)) {
  fprintf(stderr, "OOM\n");
  goto out;
 }

 edpy = eglGetDisplay((EGLNativeDisplayType)display);
 if (edpy == EGL_NO_DISPLAY) {
  fprintf(stderr, "Failed to get EGL display\n");
  goto out;
 }

 if (!eglInitialize(edpy, ((void*)0), ((void*)0))) {
  fprintf(stderr, "Failed to initialize EGL\n");
  goto out;
 }

 if (!eglChooseConfig(edpy, attr, &ecfg, 1, &num_config)) {
  fprintf(stderr, "Failed to choose config (%x)\n", eglGetError());
  goto out;
 }

 if (ecfg == ((void*)0) || num_config == 0) {
  fprintf(stderr, "No EGL configs available\n");
  goto out;
 }

 esfc = eglCreateWindowSurface(edpy, ecfg,
  (EGLNativeWindowType)window, ((void*)0));
 if (esfc == EGL_NO_SURFACE) {
  fprintf(stderr, "Unable to create EGL surface (%x)\n",
   eglGetError());
  goto out;
 }

 ectxt = eglCreateContext(edpy, ecfg, EGL_NO_CONTEXT, ((void*)0));
 if (ectxt == EGL_NO_CONTEXT) {
  fprintf(stderr, "Unable to create EGL context (%x)\n",
   eglGetError());
  goto out;
 }

 eglMakeCurrent(edpy, esfc, esfc, ectxt);

 glEnable(GL_TEXTURE_2D);

 glGenTextures(1, &texture_name);

 glBindTexture(GL_TEXTURE_2D, texture_name);

 glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, 1024, 512, 0, GL_RGB,
  GL_UNSIGNED_SHORT_5_6_5, tmp_texture_mem);
 if (gl_have_error("glTexImage2D"))
  goto out;


 glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
 glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);


 glLoadIdentity();
 glFrontFace(GL_CW);
 glEnable(GL_CULL_FACE);

 glEnableClientState(GL_TEXTURE_COORD_ARRAY);
 glEnableClientState(GL_VERTEX_ARRAY);

 if (gl_have_error("init"))
  goto out;

 gl_es_display = (void *)edpy;
 gl_es_surface = (void *)esfc;
 retval = 0;
out:
 free(tmp_texture_mem);
 return retval;
}
