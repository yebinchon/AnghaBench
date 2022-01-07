
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLenum ;


 scalar_t__ GL_NO_ERROR ;
 int fprintf (int ,char*,char const*,scalar_t__) ;
 scalar_t__ glGetError () ;
 int stderr ;

__attribute__((used)) static int gl_have_error(const char *name)
{
 GLenum e = glGetError();
 if (e != GL_NO_ERROR) {
  fprintf(stderr, "GL error: %s %x\n", name, e);
  return 1;
 }
 return 0;
}
