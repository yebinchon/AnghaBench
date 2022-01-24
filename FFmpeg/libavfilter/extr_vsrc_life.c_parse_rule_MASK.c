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
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (char*,char const) ; 
 long FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC4(uint16_t *born_rule, uint16_t *stay_rule,
                      const char *rule_str, void *log_ctx)
{
    char *tail;
    const char *p = rule_str;
    *born_rule = 0;
    *stay_rule = 0;

    if (FUNC2("bBsS", *p)) {
        /* parse rule as a Born / Stay Alive code, see
         * http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life */
        do {
            uint16_t *rule = (*p == 'b' || *p == 'B') ? born_rule : stay_rule;
            p++;
            while (*p >= '0' && *p <= '8') {
                *rule += 1<<(*p - '0');
                p++;
            }
            if (*p != '/')
                break;
            p++;
        } while (FUNC2("bBsS", *p));

        if (*p)
            goto error;
    } else {
        /* parse rule as a number, expressed in the form STAY|(BORN<<9),
         * where STAY and BORN encode the corresponding 9-bits rule */
        long int rule = FUNC3(rule_str, &tail, 10);
        if (*tail)
            goto error;
        *born_rule  = ((1<<9)-1) & rule;
        *stay_rule = rule >> 9;
    }

    return 0;

error:
    FUNC1(log_ctx, AV_LOG_ERROR, "Invalid rule code '%s' provided\n", rule_str);
    return FUNC0(EINVAL);
}