#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* name; int pad_idx; } ;
typedef  TYPE_1__ AVFilterInOut ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  WHITESPACES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int) ; 
 TYPE_1__* FUNC4 (char*,TYPE_1__**) ; 
 char* FUNC5 (char const**,void*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const char **buf, AVFilterInOut **curr_inputs,
                        AVFilterInOut **open_outputs, void *log_ctx)
{
    AVFilterInOut *parsed_inputs = NULL;
    int pad = 0;

    while (**buf == '[') {
        char *name = FUNC5(buf, log_ctx);
        AVFilterInOut *match;

        if (!name)
            return FUNC0(EINVAL);

        /* First check if the label is not in the open_outputs list */
        match = FUNC4(name, open_outputs);

        if (match) {
            FUNC2(name);
        } else {
            /* Not in the list, so add it as an input */
            if (!(match = FUNC3(sizeof(AVFilterInOut)))) {
                FUNC2(name);
                return FUNC0(ENOMEM);
            }
            match->name    = name;
            match->pad_idx = pad;
        }

        FUNC1(&parsed_inputs, &match);

        *buf += FUNC6(*buf, WHITESPACES);
        pad++;
    }

    FUNC1(&parsed_inputs, curr_inputs);
    *curr_inputs = parsed_inputs;

    return pad;
}