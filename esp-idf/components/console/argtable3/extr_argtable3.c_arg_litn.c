
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* shortopts; char const* longopts; char const* glossary; int mincount; int maxcount; int * errorfn; int * checkfn; int * scanfn; int * resetfn; struct arg_lit* parent; int * datatype; scalar_t__ flag; } ;
struct arg_lit {scalar_t__ count; TYPE_1__ hdr; } ;
typedef int arg_scanfn ;
typedef int arg_resetfn ;
typedef int arg_errorfn ;
typedef int arg_checkfn ;


 int ARG_TRACE (char*) ;
 scalar_t__ arg_lit_checkfn ;
 scalar_t__ arg_lit_errorfn ;
 scalar_t__ arg_lit_resetfn ;
 scalar_t__ arg_lit_scanfn ;
 scalar_t__ malloc (int) ;

struct arg_lit * arg_litn(
    const char *shortopts,
    const char *longopts,
    int mincount,
    int maxcount,
    const char *glossary)
{
    struct arg_lit *result;


    maxcount = (maxcount < mincount) ? mincount : maxcount;

    result = (struct arg_lit *)malloc(sizeof(struct arg_lit));
    if (result)
    {

        result->hdr.flag = 0;
        result->hdr.shortopts = shortopts;
        result->hdr.longopts = longopts;
        result->hdr.datatype = ((void*)0);
        result->hdr.glossary = glossary;
        result->hdr.mincount = mincount;
        result->hdr.maxcount = maxcount;
        result->hdr.parent = result;
        result->hdr.resetfn = (arg_resetfn *)arg_lit_resetfn;
        result->hdr.scanfn = (arg_scanfn *)arg_lit_scanfn;
        result->hdr.checkfn = (arg_checkfn *)arg_lit_checkfn;
        result->hdr.errorfn = (arg_errorfn *)arg_lit_errorfn;


        result->count = 0;
    }

    ARG_TRACE(("arg_litn() returns %p\n", result));
    return result;
}
