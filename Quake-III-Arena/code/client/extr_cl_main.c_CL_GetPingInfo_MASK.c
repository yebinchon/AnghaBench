#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct TYPE_4__ {int /*<<< orphan*/  info; TYPE_1__ adr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* cl_pinglist ; 

void FUNC1( int n, char *buf, int buflen )
{
	if (!cl_pinglist[n].adr.port)
	{
		// empty slot
		if (buflen)
			buf[0] = '\0';
		return;
	}

	FUNC0( buf, cl_pinglist[n].info, buflen );
}