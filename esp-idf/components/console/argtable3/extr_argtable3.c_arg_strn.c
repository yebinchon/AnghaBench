
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* shortopts; char const* longopts; char const* datatype; char const* glossary; int mincount; int maxcount; int * errorfn; int * checkfn; int * scanfn; int * resetfn; struct arg_str* parent; int flag; } ;
struct arg_str {char const** sval; scalar_t__ count; TYPE_1__ hdr; } ;
typedef int arg_scanfn ;
typedef int arg_resetfn ;
typedef int arg_errorfn ;
typedef int arg_checkfn ;


 int ARG_HASVALUE ;
 int ARG_TRACE (char*) ;
 scalar_t__ arg_str_checkfn ;
 scalar_t__ arg_str_errorfn ;
 scalar_t__ arg_str_resetfn ;
 scalar_t__ arg_str_scanfn ;
 scalar_t__ malloc (size_t) ;

struct arg_str * arg_strn(
    const char *shortopts,
    const char *longopts,
    const char *datatype,
    int mincount,
    int maxcount,
    const char *glossary)
{
    size_t nbytes;
    struct arg_str *result;




    maxcount = (maxcount < mincount) ? mincount : maxcount;

    nbytes = sizeof(struct arg_str)
             + maxcount * sizeof(char *);

    result = (struct arg_str *)malloc(nbytes);
    if (result)
    {
        int i;


        result->hdr.flag = ARG_HASVALUE;
        result->hdr.shortopts = shortopts;
        result->hdr.longopts = longopts;
        result->hdr.datatype = datatype ? datatype : "<string>";
        result->hdr.glossary = glossary;
        result->hdr.mincount = mincount;
        result->hdr.maxcount = maxcount;
        result->hdr.parent = result;
        result->hdr.resetfn = (arg_resetfn *)arg_str_resetfn;
        result->hdr.scanfn = (arg_scanfn *)arg_str_scanfn;
        result->hdr.checkfn = (arg_checkfn *)arg_str_checkfn;
        result->hdr.errorfn = (arg_errorfn *)arg_str_errorfn;


        result->sval = (const char * *)(result + 1);
        result->count = 0;


        for (i = 0; i < maxcount; i++)
            result->sval[i] = "";
    }

    ARG_TRACE(("arg_strn() returns %p\n", result));
    return result;
}
