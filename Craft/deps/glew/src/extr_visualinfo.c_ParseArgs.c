
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;
 char* display ;
 int displaystdout ;
 int showall ;
 int strcmp (char*,char*) ;
 int strtol (char*,int *,int ) ;
 int visual ;

GLboolean ParseArgs (int argc, char** argv)
{
  int p = 0;
  while (p < argc)
  {
    if (!strcmp(argv[p], "-display"))
    {
      if (++p >= argc) return GL_TRUE;
      display = argv[p];
    }
    else if (!strcmp(argv[p], "-visual"))
    {
      if (++p >= argc) return GL_TRUE;
      visual = (int)strtol(argv[p], ((void*)0), 0);
    }
    else if (!strcmp(argv[p], "-h"))
    {
      return GL_TRUE;
    }
    else
      return GL_TRUE;

    p++;
  }
  return GL_FALSE;
}
