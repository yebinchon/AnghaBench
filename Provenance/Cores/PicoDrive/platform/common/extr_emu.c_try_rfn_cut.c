
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int try_rfn_cut(char *fname)
{
 FILE *tmp;
 char *p;

 p = fname + strlen(fname) - 1;
 for (; p > fname; p--)
  if (*p == '.') break;
 *p = 0;

 if((tmp = fopen(fname, "rb"))) {
  fclose(tmp);
  return 1;
 }
 return 0;
}
