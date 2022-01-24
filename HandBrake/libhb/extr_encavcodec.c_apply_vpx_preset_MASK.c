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
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(AVDictionary ** av_opts, const char * preset)
{
    if (preset == NULL)
    {
        // default "medium"
        FUNC0( av_opts, "deadline", "good", 0);
        FUNC0( av_opts, "cpu-used", "2", 0);
    }
    else if (!FUNC2("veryfast", preset))
    {
        FUNC0( av_opts, "deadline", "good", 0);
        FUNC0( av_opts, "cpu-used", "5", 0);
    }
    else if (!FUNC2("faster", preset))
    {
        FUNC0( av_opts, "deadline", "good", 0);
        FUNC0( av_opts, "cpu-used", "4", 0);
    }
    else if (!FUNC2("fast", preset))
    {
        FUNC0( av_opts, "deadline", "good", 0);
        FUNC0( av_opts, "cpu-used", "3", 0);
    }
    else if (!FUNC2("medium", preset))
    {
        FUNC0( av_opts, "deadline", "good", 0);
        FUNC0( av_opts, "cpu-used", "2", 0);
    }
    else if (!FUNC2("slow", preset))
    {
        FUNC0( av_opts, "deadline", "good", 0);
        FUNC0( av_opts, "cpu-used", "1", 0);
    }
    else if (!FUNC2("slower", preset))
    {
        FUNC0( av_opts, "deadline", "good", 0);
        FUNC0( av_opts, "cpu-used", "0", 0);
    }
    else if (!FUNC2("veryslow", preset))
    {
        FUNC0( av_opts, "deadline", "best", 0);
        FUNC0( av_opts, "cpu-used", "0", 0);
    }
    else
    {
        // default "medium"
        FUNC1("apply_vpx_preset: Unknown VPx encoder preset %s", preset);
        return -1;
    }

    return 0;
}