
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GLuint ;
typedef char GLubyte ;



__attribute__((used)) static GLuint _glewStrLen (const GLubyte* s)
{
  GLuint i=0;
  if (s == ((void*)0)) return 0;
  while (s[i] != '\0') i++;
  return i;
}
