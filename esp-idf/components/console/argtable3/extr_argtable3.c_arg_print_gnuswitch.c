
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int flag; int mincount; char const** shortopts; } ;
typedef int FILE ;


 int ARG_HASVALUE ;
 int ARG_TERMINATOR ;
 int fprintf (int *,char const*,char const*) ;

__attribute__((used)) static
void arg_print_gnuswitch(FILE *fp, struct arg_hdr * *table)
{
    int tabindex;
    const char *format1 = " -%c";
    const char *format2 = " [-%c";
    const char *suffix = "";


    for(tabindex = 0;
        table[tabindex] && !(table[tabindex]->flag & ARG_TERMINATOR);
        tabindex++)
    {

        if (table[tabindex]->mincount < 1)
            continue;


        if (table[tabindex]->shortopts == ((void*)0))
            continue;


        if (table[tabindex]->flag & ARG_HASVALUE)
            continue;


        fprintf(fp, format1, table[tabindex]->shortopts[0]);
        format1 = "%c";
        format2 = "[%c";
    }


    for(tabindex = 0;
        table[tabindex] && !(table[tabindex]->flag & ARG_TERMINATOR);
        tabindex++)
    {

        if (table[tabindex]->mincount > 0)
            continue;


        if (table[tabindex]->shortopts == ((void*)0))
            continue;


        if (table[tabindex]->flag & ARG_HASVALUE)
            continue;


        fprintf(fp, format2, table[tabindex]->shortopts[0]);
        format2 = "%c";
        suffix = "]";
    }

    fprintf(fp, "%s", suffix);
}
