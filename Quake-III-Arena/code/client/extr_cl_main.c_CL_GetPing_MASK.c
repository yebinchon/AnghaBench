#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  port; } ;
struct TYPE_6__ {int time; int start; int /*<<< orphan*/  info; TYPE_3__ adr; } ;
struct TYPE_5__ {int realtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 TYPE_2__* cl_pinglist ; 
 TYPE_1__ cls ; 

void FUNC4( int n, char *buf, int buflen, int *pingtime )
{
	const char	*str;
	int		time;
	int		maxPing;

	if (!cl_pinglist[n].adr.port)
	{
		// empty slot
		buf[0]    = '\0';
		*pingtime = 0;
		return;
	}

	str = FUNC2( cl_pinglist[n].adr );
	FUNC3( buf, str, buflen );

	time = cl_pinglist[n].time;
	if (!time)
	{
		// check for timeout
		time = cls.realtime - cl_pinglist[n].start;
		maxPing = FUNC1( "cl_maxPing" );
		if( maxPing < 100 ) {
			maxPing = 100;
		}
		if (time < maxPing)
		{
			// not timed out yet
			time = 0;
		}
	}

	FUNC0(cl_pinglist[n].adr, cl_pinglist[n].info, cl_pinglist[n].time);

	*pingtime = time;
}