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
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(long offset, int daylight)
{
    char cst[17] = {0};
    char cdt[17] = "DST";
    char tz[33] = {0};

    if(offset % 3600){
        FUNC2(cst, "UTC%ld:%02u:%02u", offset / 3600, FUNC0((offset % 3600) / 60), FUNC0(offset % 60));
    } else {
        FUNC2(cst, "UTC%ld", offset / 3600);
    }
    if(daylight != 3600){
        long tz_dst = offset - daylight;
        if(tz_dst % 3600){
            FUNC2(cdt, "DST%ld:%02u:%02u", tz_dst / 3600, FUNC0((tz_dst % 3600) / 60), FUNC0(tz_dst % 60));
        } else {
            FUNC2(cdt, "DST%ld", tz_dst / 3600);
        }
    }
    FUNC2(tz, "%s%s", cst, cdt);
    FUNC1("TZ", tz, 1);
    FUNC3();
}