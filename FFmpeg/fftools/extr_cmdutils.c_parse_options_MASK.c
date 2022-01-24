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
typedef  int /*<<< orphan*/  OptionDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,char const*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char***) ; 

void FUNC3(void *optctx, int argc, char **argv, const OptionDef *options,
                   void (*parse_arg_function)(void *, const char*))
{
    const char *opt;
    int optindex, handleoptions = 1, ret;

    /* perform system-dependent conversions for arguments list */
    FUNC2(&argc, &argv);

    /* parse options */
    optindex = 1;
    while (optindex < argc) {
        opt = argv[optindex++];

        if (handleoptions && opt[0] == '-' && opt[1] != '\0') {
            if (opt[1] == '-' && opt[2] == '\0') {
                handleoptions = 0;
                continue;
            }
            opt++;

            if ((ret = FUNC1(optctx, opt, argv[optindex], options)) < 0)
                FUNC0(1);
            optindex += ret;
        } else {
            if (parse_arg_function)
                parse_arg_function(optctx, opt);
        }
    }
}