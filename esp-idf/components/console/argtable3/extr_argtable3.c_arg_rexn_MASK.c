#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct privhdr {char const* pattern; int flags; } ;
struct TYPE_2__ {char const* shortopts; char const* longopts; char const* datatype; char const* glossary; int mincount; int maxcount; struct arg_rex* priv; int /*<<< orphan*/ * errorfn; int /*<<< orphan*/ * checkfn; int /*<<< orphan*/ * scanfn; int /*<<< orphan*/ * resetfn; struct arg_rex* parent; int /*<<< orphan*/  flag; } ;
struct arg_rex {char const** sval; scalar_t__ count; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  arg_scanfn ;
typedef  int /*<<< orphan*/  arg_resetfn ;
typedef  int /*<<< orphan*/  arg_errorfn ;
typedef  int /*<<< orphan*/  arg_checkfn ;
typedef  int /*<<< orphan*/  TRexChar ;
typedef  int /*<<< orphan*/  TRex ;

/* Variables and functions */
 int /*<<< orphan*/  ARG_HASVALUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  const* FUNC2 (char*) ; 
 scalar_t__ arg_rex_checkfn ; 
 scalar_t__ arg_rex_errorfn ; 
 scalar_t__ arg_rex_resetfn ; 
 scalar_t__ arg_rex_scanfn ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct arg_rex * FUNC7(const char * shortopts,
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
    const TRexChar *error = NULL;
    TRex *rex = NULL;

    if (!pattern)
    {
        FUNC4(
            "argtable: ERROR - illegal regular expression pattern \"(NULL)\"\n");
        FUNC4("argtable: Bad argument table.\n");
        return NULL;
    }

    /* foolproof things by ensuring maxcount is not less than mincount */
    maxcount = (maxcount < mincount) ? mincount : maxcount;

    nbytes = sizeof(struct arg_rex)       /* storage for struct arg_rex */
             + sizeof(struct privhdr)     /* storage for private arg_rex data */
             + maxcount * sizeof(char *);  /* storage for sval[maxcount] array */

    result = (struct arg_rex *)FUNC3(nbytes);
    if (result == NULL)
        return result;

    /* init the arg_hdr struct */
    result->hdr.flag      = ARG_HASVALUE;
    result->hdr.shortopts = shortopts;
    result->hdr.longopts  = longopts;
    result->hdr.datatype  = datatype ? datatype : pattern;
    result->hdr.glossary  = glossary;
    result->hdr.mincount  = mincount;
    result->hdr.maxcount  = maxcount;
    result->hdr.parent    = result;
    result->hdr.resetfn   = (arg_resetfn *)arg_rex_resetfn;
    result->hdr.scanfn    = (arg_scanfn *)arg_rex_scanfn;
    result->hdr.checkfn   = (arg_checkfn *)arg_rex_checkfn;
    result->hdr.errorfn   = (arg_errorfn *)arg_rex_errorfn;

    /* store the arg_rex_priv struct immediately after the arg_rex struct */
    result->hdr.priv  = result + 1;
    priv = (struct privhdr *)(result->hdr.priv);
    priv->pattern = pattern;
    priv->flags = flags;

    /* store the sval[maxcount] array immediately after the arg_rex_priv struct */
    result->sval  = (const char * *)(priv + 1);
    result->count = 0;

    /* foolproof the string pointers by initializing them to reference empty strings */
    for (i = 0; i < maxcount; i++)
        result->sval[i] = "";

    /* here we construct and destroy a regex representation of the regular
     * expression for no other reason than to force any regex errors to be
     * trapped now rather than later. If we don't, then errors may go undetected
     * until an argument is actually parsed.
     */

    rex = FUNC5(priv->pattern, &error, priv->flags);
    if (rex == NULL)
    {
        FUNC0(("argtable: %s \"%s\"\n", error ? error : FUNC2("undefined"), priv->pattern));
        FUNC0(("argtable: Bad argument table.\n"));
    }

    FUNC6(rex);

    FUNC1(("arg_rexn() returns %p\n", result));
    return result;
}