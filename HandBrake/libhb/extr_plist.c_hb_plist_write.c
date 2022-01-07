
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int gval_write (int *,int *) ;
 char* postfix ;
 char* preamble ;

void
hb_plist_write(FILE *file, hb_value_t *gval)
{
    fprintf(file, "%s", preamble);
    gval_write(file, gval);
    fprintf(file, "%s", postfix);
}
