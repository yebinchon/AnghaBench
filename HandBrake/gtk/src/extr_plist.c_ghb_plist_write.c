
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int gval_write (int *,int *) ;
 char* postfix ;
 char* preamble ;

void
ghb_plist_write(FILE *file, GhbValue *gval)
{
    fprintf(file, "%s", preamble);
    gval_write(file, gval);
    fprintf(file, "%s", postfix);
}
