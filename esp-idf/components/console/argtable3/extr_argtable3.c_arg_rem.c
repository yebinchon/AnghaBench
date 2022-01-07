
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* datatype; char const* glossary; int mincount; int maxcount; int * errorfn; int * checkfn; int * scanfn; int * resetfn; struct arg_rem* parent; int * longopts; int * shortopts; scalar_t__ flag; } ;
struct arg_rem {TYPE_1__ hdr; } ;


 int ARG_TRACE (char*) ;
 scalar_t__ malloc (int) ;

struct arg_rem *arg_rem(const char *datatype, const char *glossary)
{
    struct arg_rem *result = (struct arg_rem *)malloc(sizeof(struct arg_rem));
    if (result)
    {
        result->hdr.flag = 0;
        result->hdr.shortopts = ((void*)0);
        result->hdr.longopts = ((void*)0);
        result->hdr.datatype = datatype;
        result->hdr.glossary = glossary;
        result->hdr.mincount = 1;
        result->hdr.maxcount = 1;
        result->hdr.parent = result;
        result->hdr.resetfn = ((void*)0);
        result->hdr.scanfn = ((void*)0);
        result->hdr.checkfn = ((void*)0);
        result->hdr.errorfn = ((void*)0);
    }

    ARG_TRACE(("arg_rem() returns %p\n", result));
    return result;
}
