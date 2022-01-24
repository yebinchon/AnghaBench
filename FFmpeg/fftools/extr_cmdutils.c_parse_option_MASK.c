#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; scalar_t__ name; } ;
typedef  TYPE_1__ OptionDef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int HAS_ARG ; 
 int OPT_BOOL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*,char const*) ; 
 int FUNC3 (void*,TYPE_1__ const*,char const*,char const*) ; 

int FUNC4(void *optctx, const char *opt, const char *arg,
                 const OptionDef *options)
{
    const OptionDef *po;
    int ret;

    po = FUNC2(options, opt);
    if (!po->name && opt[0] == 'n' && opt[1] == 'o') {
        /* handle 'no' bool option */
        po = FUNC2(options, opt + 2);
        if ((po->name && (po->flags & OPT_BOOL)))
            arg = "0";
    } else if (po->flags & OPT_BOOL)
        arg = "1";

    if (!po->name)
        po = FUNC2(options, "default");
    if (!po->name) {
        FUNC1(NULL, AV_LOG_ERROR, "Unrecognized option '%s'\n", opt);
        return FUNC0(EINVAL);
    }
    if (po->flags & HAS_ARG && !arg) {
        FUNC1(NULL, AV_LOG_ERROR, "Missing argument for option '%s'\n", opt);
        return FUNC0(EINVAL);
    }

    ret = FUNC3(optctx, po, opt, arg);
    if (ret < 0)
        return ret;

    return !!(po->flags & HAS_ARG);
}