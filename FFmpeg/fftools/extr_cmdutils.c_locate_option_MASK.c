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
struct TYPE_5__ {char const* name; int flags; } ;
typedef  TYPE_1__ OptionDef ;

/* Variables and functions */
 int HAS_ARG ; 
 TYPE_1__* FUNC0 (TYPE_1__ const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 

int FUNC2(int argc, char **argv, const OptionDef *options,
                  const char *optname)
{
    const OptionDef *po;
    int i;

    for (i = 1; i < argc; i++) {
        const char *cur_opt = argv[i];

        if (*cur_opt++ != '-')
            continue;

        po = FUNC0(options, cur_opt);
        if (!po->name && cur_opt[0] == 'n' && cur_opt[1] == 'o')
            po = FUNC0(options, cur_opt + 2);

        if ((!po->name && !FUNC1(cur_opt, optname)) ||
             (po->name && !FUNC1(optname, po->name)))
            return i;

        if (!po->name || po->flags & HAS_ARG)
            i++;
    }
    return 0;
}