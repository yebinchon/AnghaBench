
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int flag; int (* scanfn ) (void*,char*) ;void* parent; scalar_t__ shortopts; scalar_t__ longopts; } ;
typedef void arg_end ;


 int ARG_ENOMATCH ;
 int ARG_TERMINATOR ;
 int arg_register_error (void*,void*,int,char const*) ;
 int optind ;
 int stub1 (void*,char*) ;

__attribute__((used)) static
void arg_parse_untagged(int argc,
                        char * *argv,
                        struct arg_hdr * *table,
                        struct arg_end *endtable)
{
    int tabindex = 0;
    int errorlast = 0;
    const char *optarglast = ((void*)0);
    void *parentlast = ((void*)0);


    while (!(table[tabindex]->flag & ARG_TERMINATOR))
    {
        void *parent;
        int errorcode;


        if (optind >= argc)
        {

            return;
        }


        if (table[tabindex]->longopts || table[tabindex]->shortopts)
        {

            tabindex++;
            continue;
        }


        if (!(table[tabindex]->scanfn))
        {

            tabindex++;
            continue;
        }




        parent = table[tabindex]->parent;
        errorcode = table[tabindex]->scanfn(parent, argv[optind]);
        if (errorcode == 0)
        {


            optind++;


            errorlast = 0;
        }
        else
        {


            tabindex++;


            errorlast = errorcode;
            optarglast = argv[optind];
            parentlast = parent;
        }

    }


    if (errorlast)
    {
        arg_register_error(endtable, parentlast, errorlast, optarglast);
        optind++;
    }



    while (optind < argc)
    {

        arg_register_error(endtable, endtable, ARG_ENOMATCH, argv[optind++]);
    }

    return;
}
