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
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  options ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    char *s;
    int ret;
    if(!FUNC5(opt, "qscale")){
        FUNC3(NULL, AV_LOG_WARNING, "Please use -q:a or -q:v, -qscale is ambiguous\n");
        return FUNC4(o, "q:v", arg, options);
    }
    s = FUNC1("q%s", opt + 6);
    if (!s)
        return FUNC0(ENOMEM);
    ret = FUNC4(o, s, arg, options);
    FUNC2(s);
    return ret;
}