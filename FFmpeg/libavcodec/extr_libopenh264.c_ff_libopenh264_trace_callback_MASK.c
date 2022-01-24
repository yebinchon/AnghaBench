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
 int /*<<< orphan*/  FUNC0 (void*,int,char*,char const*) ; 
 int FUNC1 (int) ; 

void FUNC2(void *ctx, int level, const char *msg)
{
    // The message will be logged only if the requested EQUIVALENT ffmpeg log level is
    // less than or equal to the current ffmpeg log level.
    int equiv_ffmpeg_log_level = FUNC1(level);
    FUNC0(ctx, equiv_ffmpeg_log_level, "%s\n", msg);
}