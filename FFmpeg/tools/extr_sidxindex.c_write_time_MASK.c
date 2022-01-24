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
typedef  int int64_t ;
typedef  enum AVRounding { ____Placeholder_AVRounding } AVRounding ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int AV_TIME_BASE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(FILE *out, int64_t time, int decimals, enum AVRounding round)
{
    int seconds = time / AV_TIME_BASE;
    int fractions = time % AV_TIME_BASE;
    int minutes = seconds / 60;
    int hours = minutes / 60;
    fractions = FUNC0(fractions, FUNC2(10, decimals), AV_TIME_BASE, round);
    seconds %= 60;
    minutes %= 60;
    FUNC1(out, "PT");
    if (hours)
        FUNC1(out, "%dH", hours);
    if (hours || minutes)
        FUNC1(out, "%dM", minutes);
    FUNC1(out, "%d.%0*dS", seconds, decimals, fractions);
}