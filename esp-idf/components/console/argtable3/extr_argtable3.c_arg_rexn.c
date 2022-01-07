
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct privhdr {char const* pattern; int flags; } ;
struct TYPE_2__ {char const* shortopts; char const* longopts; char const* datatype; char const* glossary; int mincount; int maxcount; struct arg_rex* priv; int * errorfn; int * checkfn; int * scanfn; int * resetfn; struct arg_rex* parent; int flag; } ;
struct arg_rex {char const** sval; scalar_t__ count; TYPE_1__ hdr; } ;
typedef int arg_scanfn ;
typedef int arg_resetfn ;
typedef int arg_errorfn ;
typedef int arg_checkfn ;
typedef int TRexChar ;
typedef int TRex ;


 int ARG_HASVALUE ;
 int ARG_LOG (char*) ;
 int ARG_TRACE (char*) ;
 int const* _TREXC (char*) ;
 scalar_t__ arg_rex_checkfn ;
 scalar_t__ arg_rex_errorfn ;
 scalar_t__ arg_rex_resetfn ;
 scalar_t__ arg_rex_scanfn ;
 scalar_t__ malloc (size_t) ;
 int printf (char*) ;
 int * trex_compile (char const*,int const**,int) ;
 int trex_free (int *) ;

struct arg_rex * arg_rexn(const char * shortopts,
                          const char * longopts,
                          const char * pattern,
                          const char *datatype,
                          int mincount,
                          int maxcount,
                          int flags,
                          const char *glossary)
{
    size_t nbytes;
    struct arg_rex *result;
    struct privhdr *priv;
    int i;
    const TRexChar *error = ((void*)0);
    TRex *rex = ((void*)0);

    if (!pattern)
    {
        printf(
            "argtable: ERROR - illegal regular expression pattern \"(NULL)\"\n");
        printf("argtable: Bad argument table.\n");
        return ((void*)0);
    }


    maxcount = (maxcount < mincount) ? mincount : maxcount;

    nbytes = sizeof(struct arg_rex)
             + sizeof(struct privhdr)
             + maxcount * sizeof(char *);

    result = (struct arg_rex *)malloc(nbytes);
    if (result == ((void*)0))
        return result;


    result->hdr.flag = ARG_HASVALUE;
    result->hdr.shortopts = shortopts;
    result->hdr.longopts = longopts;
    result->hdr.datatype = datatype ? datatype : pattern;
    result->hdr.glossary = glossary;
    result->hdr.mincount = mincount;
    result->hdr.maxcount = maxcount;
    result->hdr.parent = result;
    result->hdr.resetfn = (arg_resetfn *)arg_rex_resetfn;
    result->hdr.scanfn = (arg_scanfn *)arg_rex_scanfn;
    result->hdr.checkfn = (arg_checkfn *)arg_rex_checkfn;
    result->hdr.errorfn = (arg_errorfn *)arg_rex_errorfn;


    result->hdr.priv = result + 1;
    priv = (struct privhdr *)(result->hdr.priv);
    priv->pattern = pattern;
    priv->flags = flags;


    result->sval = (const char * *)(priv + 1);
    result->count = 0;


    for (i = 0; i < maxcount; i++)
        result->sval[i] = "";







    rex = trex_compile(priv->pattern, &error, priv->flags);
    if (rex == ((void*)0))
    {
        ARG_LOG(("argtable: %s \"%s\"\n", error ? error : _TREXC("undefined"), priv->pattern));
        ARG_LOG(("argtable: Bad argument table.\n"));
    }

    trex_free(rex);

    ARG_TRACE(("arg_rexn() returns %p\n", result));
    return result;
}
