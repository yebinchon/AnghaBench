
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;
typedef int GLubyte ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;
 scalar_t__ _glewStrCLen (int const*,char) ;
 scalar_t__ _glewStrLen (int const*) ;
 scalar_t__ _glewStrSame (int const*,int const*,scalar_t__) ;

__attribute__((used)) static GLboolean _glewSearchExtension (const char* name, const GLubyte *start, const GLubyte *end)
{
  const GLubyte* p;
  GLuint len = _glewStrLen((const GLubyte*)name);
  p = start;
  while (p < end)
  {
    GLuint n = _glewStrCLen(p, ' ');
    if (len == n && _glewStrSame((const GLubyte*)name, p, n)) return GL_TRUE;
    p += n+1;
  }
  return GL_FALSE;
}
