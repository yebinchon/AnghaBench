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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  int_cb ; 
 int /*<<< orphan*/ * progress_avio ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(void *optctx, const char *opt, const char *arg)
{
    AVIOContext *avio = NULL;
    int ret;

    if (!FUNC3(arg, "-"))
        arg = "pipe:";
    ret = FUNC2(&avio, arg, AVIO_FLAG_WRITE, &int_cb, NULL);
    if (ret < 0) {
        FUNC1(NULL, AV_LOG_ERROR, "Failed to open progress URL \"%s\": %s\n",
               arg, FUNC0(ret));
        return ret;
    }
    progress_avio = avio;
    return 0;
}