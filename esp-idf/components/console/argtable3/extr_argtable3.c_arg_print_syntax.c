
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int syntax ;
struct arg_hdr {int flag; char* shortopts; char* longopts; char* datatype; int mincount; int maxcount; } ;
typedef int FILE ;


 int ARG_HASOPTVALUE ;
 int ARG_HASVALUE ;
 int ARG_TERMINATOR ;
 int arg_cat_option (char*,int,char const*,char const*,char const*,int) ;
 int arg_print_gnuswitch (int *,struct arg_hdr**) ;
 int fprintf (int *,char*,char const*,...) ;
 scalar_t__ strlen (char*) ;

void arg_print_syntax(FILE *fp, void * *argtable, const char *suffix)
{
    struct arg_hdr * *table = (struct arg_hdr * *)argtable;
    int i, tabindex;


    arg_print_gnuswitch(fp, table);


    for(tabindex = 0;
        table[tabindex] && !(table[tabindex]->flag & ARG_TERMINATOR);
        tabindex++)
    {
        char syntax[200] = "";
        const char *shortopts, *longopts, *datatype;


        if (table[tabindex]->shortopts &&
            !(table[tabindex]->flag & ARG_HASVALUE))
            continue;

        shortopts = table[tabindex]->shortopts;
        longopts = table[tabindex]->longopts;
        datatype = table[tabindex]->datatype;
        arg_cat_option(syntax,
                       sizeof(syntax),
                       shortopts,
                       longopts,
                       datatype,
                       table[tabindex]->flag & ARG_HASOPTVALUE);

        if (strlen(syntax) > 0)
        {

            for (i = 0; i < table[tabindex]->mincount; i++)
                fprintf(fp, " %s", syntax);


            switch ( table[tabindex]->maxcount - table[tabindex]->mincount )
            {
            case 0:
                break;
            case 1:
                fprintf(fp, " [%s]", syntax);
                break;
            case 2:
                fprintf(fp, " [%s] [%s]", syntax, syntax);
                break;
            default:
                fprintf(fp, " [%s]...", syntax);
                break;
            }
        }
    }

    if (suffix)
        fprintf(fp, "%s", suffix);
}
