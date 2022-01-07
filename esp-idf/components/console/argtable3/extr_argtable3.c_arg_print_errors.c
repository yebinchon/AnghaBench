
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_hdr {int (* errorfn ) (scalar_t__,int *,int ,int ,char const*) ;} ;
struct arg_end {int count; int * argval; int * error; scalar_t__* parent; } ;
typedef int FILE ;


 int ARG_TRACE (char*) ;
 int stub1 (scalar_t__,int *,int ,int ,char const*) ;

void arg_print_errors(FILE * fp, struct arg_end * end, const char * progname)
{
    int i;
    ARG_TRACE(("arg_errors()\n"));
    for (i = 0; i < end->count; i++)
    {
        struct arg_hdr *errorparent = (struct arg_hdr *)(end->parent[i]);
        if (errorparent->errorfn)
            errorparent->errorfn(end->parent[i],
                                 fp,
                                 end->error[i],
                                 end->argval[i],
                                 progname);
    }
}
