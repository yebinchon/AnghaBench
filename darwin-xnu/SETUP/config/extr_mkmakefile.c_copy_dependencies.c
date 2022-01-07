
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LINESIZE ;
 int OLDSALUTATION ;
 int * fgets (char*,int ,int *) ;
 int fputs (char*,int *) ;
 char* makbuf ;
 int strncmp (char*,int ,int) ;

void
copy_dependencies(FILE *makin, FILE *makout)
{
 int oldlen = (sizeof OLDSALUTATION - 1);

 while (fgets(makbuf, LINESIZE, makin) != ((void*)0)) {
  if (! strncmp(makbuf, OLDSALUTATION, oldlen))
   break;
 }
 while (fgets(makbuf, LINESIZE, makin) != ((void*)0)) {
  if (oldlen != 0)
  {
   if (makbuf[0] == '\n')
    continue;
   else
    oldlen = 0;
  }
  fputs(makbuf, makout);
 }
}
