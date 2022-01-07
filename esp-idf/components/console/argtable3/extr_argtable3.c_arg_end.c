
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mincount; int maxcount; int * errorfn; int * checkfn; int * scanfn; int * resetfn; struct arg_end* parent; int * glossary; int * datatype; int * longopts; int * shortopts; int flag; } ;
struct arg_end {int* error; void** parent; char const** argval; TYPE_1__ hdr; } ;
typedef int arg_resetfn ;
typedef int arg_errorfn ;


 int ARG_TERMINATOR ;
 int ARG_TRACE (char*) ;
 scalar_t__ arg_end_errorfn ;
 scalar_t__ arg_end_resetfn ;
 scalar_t__ malloc (size_t) ;

struct arg_end * arg_end(int maxcount)
{
    size_t nbytes;
    struct arg_end *result;

    nbytes = sizeof(struct arg_end)
             + maxcount * sizeof(int)
             + maxcount * sizeof(void *)
             + maxcount * sizeof(char *);

    result = (struct arg_end *)malloc(nbytes);
    if (result)
    {

        result->hdr.flag = ARG_TERMINATOR;
        result->hdr.shortopts = ((void*)0);
        result->hdr.longopts = ((void*)0);
        result->hdr.datatype = ((void*)0);
        result->hdr.glossary = ((void*)0);
        result->hdr.mincount = 1;
        result->hdr.maxcount = maxcount;
        result->hdr.parent = result;
        result->hdr.resetfn = (arg_resetfn *)arg_end_resetfn;
        result->hdr.scanfn = ((void*)0);
        result->hdr.checkfn = ((void*)0);
        result->hdr.errorfn = (arg_errorfn *)arg_end_errorfn;


        result->error = (int *)(result + 1);


        result->parent = (void * *)(result->error + maxcount );


        result->argval = (const char * *)(result->parent + maxcount );
    }

    ARG_TRACE(("arg_end(%d) returns %p\n", maxcount, result));
    return result;
}
