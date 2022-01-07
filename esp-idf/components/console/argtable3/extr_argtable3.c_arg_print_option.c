
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int syntax ;
typedef int FILE ;


 int arg_cat_optionv (char*,int,char const*,char const*,char const*,int ,char*) ;
 int fputs (char const*,int *) ;

void arg_print_option(FILE *fp,
                      const char *shortopts,
                      const char *longopts,
                      const char *datatype,
                      const char *suffix)
{
    char syntax[200] = "";
    suffix = suffix ? suffix : "";


    arg_cat_optionv(syntax,
                    sizeof(syntax),
                    shortopts,
                    longopts,
                    datatype,
                    0,
                    "|");

    fputs(syntax, fp);
    fputs(suffix, fp);
}
