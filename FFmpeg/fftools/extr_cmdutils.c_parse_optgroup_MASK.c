#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; int /*<<< orphan*/  help; } ;
struct TYPE_8__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; TYPE_4__* opt; } ;
struct TYPE_7__ {int nb_opts; int /*<<< orphan*/  arg; TYPE_1__* group_def; TYPE_3__* opts; } ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ OptionGroup ;
typedef  TYPE_3__ Option ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (void*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(void *optctx, OptionGroup *g)
{
    int i, ret;

    FUNC1(NULL, AV_LOG_DEBUG, "Parsing a group of options: %s %s.\n",
           g->group_def->name, g->arg);

    for (i = 0; i < g->nb_opts; i++) {
        Option *o = &g->opts[i];

        if (g->group_def->flags &&
            !(g->group_def->flags & o->opt->flags)) {
            FUNC1(NULL, AV_LOG_ERROR, "Option %s (%s) cannot be applied to "
                   "%s %s -- you are trying to apply an input option to an "
                   "output file or vice versa. Move this option before the "
                   "file it belongs to.\n", o->key, o->opt->help,
                   g->group_def->name, g->arg);
            return FUNC0(EINVAL);
        }

        FUNC1(NULL, AV_LOG_DEBUG, "Applying option %s (%s) with argument %s.\n",
               o->key, o->opt->help, o->val);

        ret = FUNC2(optctx, o->opt, o->key, o->val);
        if (ret < 0)
            return ret;
    }

    FUNC1(NULL, AV_LOG_DEBUG, "Successfully parsed a group of options.\n");

    return 0;
}