#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  idx_str ;
struct TYPE_2__ {void** streamid_map; int /*<<< orphan*/  nb_streamid_map; } ;
typedef  TYPE_1__ OptionsContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ MAX_STREAMS ; 
 int /*<<< orphan*/  OPT_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void** FUNC3 (void**,int,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static int FUNC6(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    int idx;
    char *p;
    char idx_str[16];

    FUNC1(idx_str, arg, sizeof(idx_str));
    p = FUNC5(idx_str, ':');
    if (!p) {
        FUNC0(NULL, AV_LOG_FATAL,
               "Invalid value '%s' for option '%s', required syntax is 'index:value'\n",
               arg, opt);
        FUNC2(1);
    }
    *p++ = '\0';
    idx = FUNC4(opt, idx_str, OPT_INT, 0, MAX_STREAMS-1);
    o->streamid_map = FUNC3(o->streamid_map, sizeof(*o->streamid_map), &o->nb_streamid_map, idx+1);
    o->streamid_map[idx] = FUNC4(opt, p, OPT_INT, 0, INT_MAX);
    return 0;
}