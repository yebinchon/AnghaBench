#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* qboolean ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {scalar_t__ realtime; } ;
struct TYPE_4__ {float* color; int linewidth; int x; int current; int totallines; int* text; scalar_t__* times; void* initialized; } ;

/* Variables and functions */
 char COLOR_WHITE ; 
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int NUM_CON_TIMES ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 TYPE_3__* cl_noprint ; 
 TYPE_2__ cls ; 
 TYPE_1__ con ; 
 void* qfalse ; 
 void* qtrue ; 

void FUNC5( char *txt ) {
	int		y;
	int		c, l;
	int		color;
	qboolean skipnotify = qfalse;		// NERVE - SMF
	int prev;							// NERVE - SMF

	// TTimo - prefix for text that shows up in console but not in notify
	// backported from RTCW
	if ( !FUNC4( txt, "[skipnotify]", 12 ) ) {
		skipnotify = qtrue;
		txt += 12;
	}
	
	// for some demos we don't want to ever show anything on the console
	if ( cl_noprint && cl_noprint->integer ) {
		return;
	}
	
	if (!con.initialized) {
		con.color[0] = 
		con.color[1] = 
		con.color[2] =
		con.color[3] = 1.0f;
		con.linewidth = -1;
		FUNC1 ();
		con.initialized = qtrue;
	}

	color = FUNC0(COLOR_WHITE);

	while ( (c = *txt) != 0 ) {
		if ( FUNC3( txt ) ) {
			color = FUNC0( *(txt+1) );
			txt += 2;
			continue;
		}

		// count word length
		for (l=0 ; l< con.linewidth ; l++) {
			if ( txt[l] <= ' ') {
				break;
			}

		}

		// word wrap
		if (l != con.linewidth && (con.x + l >= con.linewidth) ) {
			FUNC2(skipnotify);

		}

		txt++;

		switch (c)
		{
		case '\n':
			FUNC2 (skipnotify);
			break;
		case '\r':
			con.x = 0;
			break;
		default:	// display character and advance
			y = con.current % con.totallines;
			con.text[y*con.linewidth+con.x] = (color << 8) | c;
			con.x++;
			if (con.x >= con.linewidth) {
				FUNC2(skipnotify);
				con.x = 0;
			}
			break;
		}
	}


	// mark time for transparent overlay
	if (con.current >= 0) {
		// NERVE - SMF
		if ( skipnotify ) {
			prev = con.current % NUM_CON_TIMES - 1;
			if ( prev < 0 )
				prev = NUM_CON_TIMES - 1;
			con.times[prev] = 0;
		}
		else
		// -NERVE - SMF
			con.times[con.current % NUM_CON_TIMES] = cls.realtime;
	}
}