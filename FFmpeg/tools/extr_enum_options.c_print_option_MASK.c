#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; int type; int flags; char* help; scalar_t__ unit; } ;
typedef  TYPE_1__ AVOption ;
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
 int AV_OPT_FLAG_ENCODING_PARAM ; 
#define  FF_OPT_TYPE_BINARY 135 
 scalar_t__ FF_OPT_TYPE_CONST ; 
#define  FF_OPT_TYPE_DOUBLE 134 
#define  FF_OPT_TYPE_FLAGS 133 
#define  FF_OPT_TYPE_FLOAT 132 
#define  FF_OPT_TYPE_INT 131 
#define  FF_OPT_TYPE_INT64 130 
#define  FF_OPT_TYPE_RATIONAL 129 
#define  FF_OPT_TYPE_STRING 128 
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const**,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(const AVClass *class, const AVOption *o)
{
    FUNC1("@item -%s @var{", o->name);
    switch (o->type) {
    case FF_OPT_TYPE_BINARY:   FUNC1("hexadecimal string"); break;
    case FF_OPT_TYPE_STRING:   FUNC1("string");             break;
    case FF_OPT_TYPE_INT:
    case FF_OPT_TYPE_INT64:    FUNC1("integer");            break;
    case FF_OPT_TYPE_FLOAT:
    case FF_OPT_TYPE_DOUBLE:   FUNC1("float");              break;
    case FF_OPT_TYPE_RATIONAL: FUNC1("rational number");    break;
    case FF_OPT_TYPE_FLAGS:    FUNC1("flags");              break;
    default:                   FUNC1("value");              break;
    }
    FUNC1("} (@emph{");

    if (o->flags & AV_OPT_FLAG_ENCODING_PARAM) {
        FUNC1("input");
        if (o->flags & AV_OPT_FLAG_ENCODING_PARAM)
            FUNC1("/");
    }
    if (o->flags & AV_OPT_FLAG_ENCODING_PARAM)
        FUNC1("output");

    FUNC1("})\n");
    if (o->help)
        FUNC1("%s\n", o->help);

    if (o->unit) {
        const AVOption *u = NULL;
        FUNC1("\nPossible values:\n@table @samp\n");

        while ((u = FUNC0(&class, u)))
            if (u->type == FF_OPT_TYPE_CONST && u->unit && !FUNC2(u->unit, o->unit))
                FUNC1("@item %s\n%s\n", u->name, u->help ? u->help : "");
        FUNC1("@end table\n");
    }
}