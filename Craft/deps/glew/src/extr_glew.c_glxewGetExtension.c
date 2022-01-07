
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLubyte ;
typedef int GLboolean ;


 int GLX_EXTENSIONS ;
 int GL_FALSE ;
 int _glewSearchExtension (char const*,int const*,int const*) ;
 int _glewStrLen (int const*) ;
 scalar_t__ glXGetClientString (int ,int ) ;
 int glXGetCurrentDisplay () ;

GLboolean glxewGetExtension (const char* name)
{
  const GLubyte* start;
  const GLubyte* end;

  if (glXGetCurrentDisplay == ((void*)0)) return GL_FALSE;
  start = (const GLubyte*)glXGetClientString(glXGetCurrentDisplay(), GLX_EXTENSIONS);
  if (0 == start) return GL_FALSE;
  end = start + _glewStrLen(start);
  return _glewSearchExtension(name, start, end);
}
