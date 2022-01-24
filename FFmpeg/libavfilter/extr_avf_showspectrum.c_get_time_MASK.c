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
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 char* FUNC0 (char*,...) ; 
 int FUNC1 (float) ; 

__attribute__((used)) static char *FUNC2(AVFilterContext *ctx, float seconds, int x)
{
    char *units;

    if (x == 0)
        units = FUNC0("0");
    else if (FUNC1(seconds) > 6)
        units = FUNC0("%.2fh", seconds / (60 * 60));
    else if (FUNC1(seconds) > 3)
        units = FUNC0("%.2fm", seconds / 60);
    else
        units = FUNC0("%.2fs", seconds);
    return units;
}