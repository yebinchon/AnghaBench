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
struct tm {int tm_hour; int tm_min; int /*<<< orphan*/  tm_sec; } ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void *optctx, const char *opt, const char *arg)
{
    char filename[40];
    time_t today2 = FUNC6(NULL);
    struct tm *today = FUNC2(&today2);

    if (!today) { // maybe tomorrow
        FUNC0(NULL, AV_LOG_FATAL, "Unable to get current time: %s\n", FUNC5(errno));
        FUNC1(1);
    }

    FUNC4(filename, sizeof(filename), "vstats_%02d%02d%02d.log", today->tm_hour, today->tm_min,
             today->tm_sec);
    return FUNC3(NULL, opt, filename);
}