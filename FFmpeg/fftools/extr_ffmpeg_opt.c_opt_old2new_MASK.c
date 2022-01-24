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
typedef  int /*<<< orphan*/  OptionsContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (char*,char const*,char const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  options ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    int ret;
    char *s = FUNC1("%s:%c", opt + 1, *opt);
    if (!s)
        return FUNC0(ENOMEM);
    ret = FUNC3(o, s, arg, options);
    FUNC2(s);
    return ret;
}