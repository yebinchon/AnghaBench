
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ EGLint ;


 scalar_t__ EGL_SUCCESS ;
 scalar_t__ eglGetError () ;
 int fprintf (int ,char*,char const*,scalar_t__) ;
 int stderr ;

__attribute__((used)) static int gles_have_error(const char *name)
{
 EGLint e = eglGetError();
 if (e != EGL_SUCCESS) {
  fprintf(stderr, "%s %x\n", name, e);
  return 1;
 }
 return 0;
}
