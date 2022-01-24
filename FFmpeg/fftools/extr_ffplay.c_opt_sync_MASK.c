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
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_SYNC_AUDIO_MASTER ; 
 int /*<<< orphan*/  AV_SYNC_EXTERNAL_CLOCK ; 
 int /*<<< orphan*/  AV_SYNC_VIDEO_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  av_sync_type ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(void *optctx, const char *opt, const char *arg)
{
    if (!FUNC2(arg, "audio"))
        av_sync_type = AV_SYNC_AUDIO_MASTER;
    else if (!FUNC2(arg, "video"))
        av_sync_type = AV_SYNC_VIDEO_MASTER;
    else if (!FUNC2(arg, "ext"))
        av_sync_type = AV_SYNC_EXTERNAL_CLOCK;
    else {
        FUNC0(NULL, AV_LOG_ERROR, "Unknown value for %s: %s\n", opt, arg);
        FUNC1(1);
    }
    return 0;
}