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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  OptionsContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static int FUNC5(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    char buf[128];
    int64_t recording_timestamp = FUNC3(opt, arg, 0) / 1E6;
    struct tm time = *FUNC1((time_t*)&recording_timestamp);
    if (!FUNC4(buf, sizeof(buf), "creation_time=%Y-%m-%dT%H:%M:%S%z", &time))
        return -1;
    FUNC2(o, "metadata", buf, options);

    FUNC0(NULL, AV_LOG_WARNING, "%s is deprecated, set the 'creation_time' metadata "
                                 "tag instead.\n", opt);
    return 0;
}