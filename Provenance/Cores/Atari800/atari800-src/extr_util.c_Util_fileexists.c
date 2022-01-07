
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FALSE ;
 int TRUE ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;

int Util_fileexists(const char *filename)
{
 FILE *fp;
 fp = fopen(filename, "rb");
 if (fp == ((void*)0))
  return FALSE;
 fclose(fp);
 return TRUE;
}
