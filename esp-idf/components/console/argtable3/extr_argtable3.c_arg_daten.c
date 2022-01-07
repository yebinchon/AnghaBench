
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm {int dummy; } ;
struct TYPE_2__ {char const* shortopts; char const* longopts; char const* datatype; char const* glossary; int mincount; int maxcount; int * errorfn; int * checkfn; int * scanfn; int * resetfn; struct arg_date* parent; int flag; } ;
struct arg_date {char const* format; scalar_t__ count; struct tm* tmval; TYPE_1__ hdr; } ;
typedef int arg_scanfn ;
typedef int arg_resetfn ;
typedef int arg_errorfn ;
typedef int arg_checkfn ;


 int ARG_HASVALUE ;
 int ARG_TRACE (char*) ;
 scalar_t__ arg_date_checkfn ;
 scalar_t__ arg_date_errorfn ;
 scalar_t__ arg_date_resetfn ;
 scalar_t__ arg_date_scanfn ;
 scalar_t__ calloc (int,size_t) ;

struct arg_date * arg_daten(
    const char * shortopts,
    const char * longopts,
    const char * format,
    const char *datatype,
    int mincount,
    int maxcount,
    const char *glossary)
{
    size_t nbytes;
    struct arg_date *result;


    maxcount = (maxcount < mincount) ? mincount : maxcount;


    if (!format)
        format = "%x";

    nbytes = sizeof(struct arg_date)
        + maxcount * sizeof(struct tm);



    result = (struct arg_date *)calloc(1, nbytes);
    if (result)
    {

        result->hdr.flag = ARG_HASVALUE;
        result->hdr.shortopts = shortopts;
        result->hdr.longopts = longopts;
        result->hdr.datatype = datatype ? datatype : format;
        result->hdr.glossary = glossary;
        result->hdr.mincount = mincount;
        result->hdr.maxcount = maxcount;
        result->hdr.parent = result;
        result->hdr.resetfn = (arg_resetfn *)arg_date_resetfn;
        result->hdr.scanfn = (arg_scanfn *)arg_date_scanfn;
        result->hdr.checkfn = (arg_checkfn *)arg_date_checkfn;
        result->hdr.errorfn = (arg_errorfn *)arg_date_errorfn;


        result->tmval = (struct tm *)(result + 1);


        result->count = 0;
        result->format = format;
    }

    ARG_TRACE(("arg_daten() returns %p\n", result));
    return result;
}
