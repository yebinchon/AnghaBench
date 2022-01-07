
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fprintf (int *,char*) ;
 int qfalse ;
 int qtrue ;

int WriteIndent(FILE *fp, int indent)
{
 while(indent-- > 0)
 {
  if (fprintf(fp, "\t") < 0) return qfalse;
 }
 return qtrue;
}
