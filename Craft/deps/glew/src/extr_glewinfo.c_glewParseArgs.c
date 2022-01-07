
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;
 int strcmp (char*,char*) ;
 int strtol (char*,int *,int ) ;

GLboolean glewParseArgs (int argc, char** argv, char** display, int* visual)
{
  int p = 0;
  while (p < argc)
  {
    if (!strcmp(argv[p], "-display"))
    {
      if (++p >= argc) return GL_TRUE;
      *display = argv[p++];
    }
    else if (!strcmp(argv[p], "-visual"))
    {
      if (++p >= argc) return GL_TRUE;
      *visual = (int)strtol(argv[p++], ((void*)0), 0);
    }
    else
      return GL_TRUE;

  }
  return GL_FALSE;
}
