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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  log_callback_help ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

int FUNC12(void *optctx, const char *opt, const char *arg)
{
    char *topic, *par;
    FUNC2(log_callback_help);

    topic = FUNC3(arg ? arg : "");
    if (!topic)
        return FUNC0(ENOMEM);
    par = FUNC10(topic, '=');
    if (par)
        *par++ = 0;

    if (!*topic) {
        FUNC6(topic, par);
    } else if (!FUNC11(topic, "decoder")) {
        FUNC5(par, 0);
    } else if (!FUNC11(topic, "encoder")) {
        FUNC5(par, 1);
    } else if (!FUNC11(topic, "demuxer")) {
        FUNC7(par);
    } else if (!FUNC11(topic, "muxer")) {
        FUNC9(par);
#if CONFIG_AVFILTER
    } else if (!strcmp(topic, "filter")) {
        show_help_filter(par);
#endif
    } else if (!FUNC11(topic, "bsf")) {
        FUNC4(par);
    } else {
        FUNC6(topic, par);
    }

    FUNC1(&topic);
    return 0;
}