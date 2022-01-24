#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct UPNPUrls {int /*<<< orphan*/  controlURL; } ;
struct TYPE_2__ {int /*<<< orphan*/  servicetype; } ;
struct IGDdatas {TYPE_1__ first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

int
FUNC2(struct UPNPUrls * urls, struct IGDdatas * data)
{
	char status[64];
	unsigned int uptime;
	status[0] = '\0';
	FUNC0(urls->controlURL, data->first.servicetype,
	                   status, &uptime, NULL);
	if(0 == FUNC1("Connected", status))
		return 1;
	else if(0 == FUNC1("Up", status))	/* Also accept "Up" */
		return 1;
	else
		return 0;
}