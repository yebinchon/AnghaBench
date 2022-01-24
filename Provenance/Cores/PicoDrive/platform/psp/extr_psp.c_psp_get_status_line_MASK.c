#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int hour; int minutes; } ;
typedef  TYPE_1__ pspTime ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int,...) ; 
 int FUNC5 (char*) ; 

char *FUNC6(void)
{
	static char buff[64];
	int ret, bat_percent, bat_time;
	pspTime time;

	ret = FUNC3(&time);
	bat_percent = FUNC0();
	bat_time = FUNC1();
	if (ret < 0 || bat_percent < 0 || bat_time < 0) return NULL;

	FUNC4(buff, sizeof(buff), "%02i:%02i  bat: %3i%%", time.hour, time.minutes, bat_percent);
	if (!FUNC2())
		FUNC4(buff+FUNC5(buff), sizeof(buff)-FUNC5(buff), " (%i:%02i)", bat_time/60, bat_time%60);
	return buff;
}