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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 

int FUNC2(int argc, char **argv)
{
    if (argc < 2)
    {
        FUNC0(NULL, AV_LOG_ERROR, "Incorrect input: expected %s <name of a video file>\nNote that test works only for huffyuv, flv and mpeg4 decoders\n", argv[0]);
        return 1;
    }

    if (FUNC1(argv[1]) != 0)
        return 1;

    return 0;
}