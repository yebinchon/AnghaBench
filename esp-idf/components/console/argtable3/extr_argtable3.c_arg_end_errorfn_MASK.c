#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  ARG_ELIMIT 132 
#define  ARG_ELONGOPT 131 
#define  ARG_EMALLOC 130 
#define  ARG_EMISSARG 129 
#define  ARG_ENOMATCH 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
    void *parent,
    FILE *fp,
    int error,
    const char *argval,
    const char *progname)
{
    /* suppress unreferenced formal parameter warning */
    (void)parent;

    progname = progname ? progname : "";
    argval = argval ? argval : "";

    FUNC0(fp, "%s: ", progname);
    switch(error)
    {
    case ARG_ELIMIT:
        FUNC2("too many errors to display", fp);
        break;
    case ARG_EMALLOC:
        FUNC2("insufficent memory", fp);
        break;
    case ARG_ENOMATCH:
        FUNC0(fp, "unexpected argument \"%s\"", argval);
        break;
    case ARG_EMISSARG:
        FUNC0(fp, "option \"%s\" requires an argument", argval);
        break;
    case ARG_ELONGOPT:
        FUNC0(fp, "invalid option \"%s\"", argval);
        break;
    default:
        FUNC0(fp, "invalid option \"-%c\"", error);
        break;
    }
    
    FUNC1('\n', fp);
}