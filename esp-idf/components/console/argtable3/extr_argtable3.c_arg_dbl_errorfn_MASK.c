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
struct TYPE_2__ {char* shortopts; char* longopts; char* datatype; } ;
struct arg_dbl {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  EBADDOUBLE 130 
#define  EMAXCOUNT 129 
#define  EMINCOUNT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
    struct arg_dbl *parent,
    FILE *fp,
    int errorcode,
    const char *argval,
    const char *progname)
{
    const char *shortopts = parent->hdr.shortopts;
    const char *longopts  = parent->hdr.longopts;
    const char *datatype  = parent->hdr.datatype;

    /* make argval NULL safe */
    argval = argval ? argval : "";

    FUNC1(fp, "%s: ", progname);
    switch(errorcode)
    {
    case EMINCOUNT:
        FUNC2("missing option ", fp);
        FUNC0(fp, shortopts, longopts, datatype, "\n");
        break;

    case EMAXCOUNT:
        FUNC2("excess option ", fp);
        FUNC0(fp, shortopts, longopts, argval, "\n");
        break;

    case EBADDOUBLE:
        FUNC1(fp, "invalid argument \"%s\" to option ", argval);
        FUNC0(fp, shortopts, longopts, datatype, "\n");
        break;
    }
}