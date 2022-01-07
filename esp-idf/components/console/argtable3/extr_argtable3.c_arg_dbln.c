
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* shortopts; char const* longopts; char const* datatype; char const* glossary; int mincount; int maxcount; int * errorfn; int * checkfn; int * scanfn; int * resetfn; struct arg_dbl* parent; int flag; } ;
struct arg_dbl {double* dval; scalar_t__ count; TYPE_1__ hdr; } ;
typedef int arg_scanfn ;
typedef int arg_resetfn ;
typedef int arg_errorfn ;
typedef int arg_checkfn ;


 int ARG_HASVALUE ;
 int ARG_TRACE (char*) ;
 scalar_t__ arg_dbl_checkfn ;
 scalar_t__ arg_dbl_errorfn ;
 scalar_t__ arg_dbl_resetfn ;
 scalar_t__ arg_dbl_scanfn ;
 scalar_t__ malloc (size_t) ;

struct arg_dbl * arg_dbln(
    const char * shortopts,
    const char * longopts,
    const char *datatype,
    int mincount,
    int maxcount,
    const char *glossary)
{
    size_t nbytes;
    struct arg_dbl *result;


    maxcount = (maxcount < mincount) ? mincount : maxcount;

    nbytes = sizeof(struct arg_dbl)
             + (maxcount + 1) * sizeof(double);

    result = (struct arg_dbl *)malloc(nbytes);
    if (result)
    {
        size_t addr;
        size_t rem;


        result->hdr.flag = ARG_HASVALUE;
        result->hdr.shortopts = shortopts;
        result->hdr.longopts = longopts;
        result->hdr.datatype = datatype ? datatype : "<double>";
        result->hdr.glossary = glossary;
        result->hdr.mincount = mincount;
        result->hdr.maxcount = maxcount;
        result->hdr.parent = result;
        result->hdr.resetfn = (arg_resetfn *)arg_dbl_resetfn;
        result->hdr.scanfn = (arg_scanfn *)arg_dbl_scanfn;
        result->hdr.checkfn = (arg_checkfn *)arg_dbl_checkfn;
        result->hdr.errorfn = (arg_errorfn *)arg_dbl_errorfn;






        addr = (size_t)(result + 1);
        rem = addr % sizeof(double);
        result->dval = (double *)(addr + sizeof(double) - rem);
        ARG_TRACE(("addr=%p, dval=%p, sizeof(double)=%d rem=%d\n", addr, result->dval, (int)sizeof(double), (int)rem));

        result->count = 0;
    }

    ARG_TRACE(("arg_dbln() returns %p\n", result));
    return result;
}
