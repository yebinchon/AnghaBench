
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int dummy; } ;
struct arg_end {int count; } ;


 int ARG_EMALLOC ;
 int arg_endindex (struct arg_hdr**) ;
 int arg_parse_check (struct arg_hdr**,struct arg_end*) ;
 int arg_parse_tagged (int,char**,struct arg_hdr**,struct arg_end*) ;
 int arg_parse_untagged (int,char**,struct arg_hdr**,struct arg_end*) ;
 int arg_register_error (struct arg_end*,struct arg_end*,int ,int *) ;
 int arg_reset (void**) ;
 int free (char**) ;
 scalar_t__ malloc (int) ;

int arg_parse(int argc, char * *argv, void * *argtable)
{
    struct arg_hdr * *table = (struct arg_hdr * *)argtable;
    struct arg_end *endtable;
    int endindex;
    char * *argvcopy = ((void*)0);




    arg_reset(argtable);


    endindex = arg_endindex(table);
    endtable = (struct arg_end *)table[endindex];




    if (argc == 0)
    {

        arg_parse_check(table, endtable);


        return endtable->count;
    }

    argvcopy = (char **)malloc(sizeof(char *) * (argc + 1));
    if (argvcopy)
    {
        int i;






        for (i = 0; i < argc; i++)
            argvcopy[i] = argv[i];

        argvcopy[argc] = ((void*)0);


        arg_parse_tagged(argc, argvcopy, table, endtable);


        arg_parse_untagged(argc, argvcopy, table, endtable);


        if (endtable->count == 0)
            arg_parse_check(table, endtable);


        free(argvcopy);
    }
    else
    {

        arg_register_error(endtable, endtable, ARG_EMALLOC, ((void*)0));
    }

    return endtable->count;
}
