#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ pm_type; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_16__ {TYPE_2__ snap; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int realtime; int keyCatchers; } ;
struct TYPE_13__ {int current; int* times; short* text; int totallines; int linewidth; scalar_t__ xadjust; } ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* SetColor ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ BIGCHAR_HEIGHT ; 
 int BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int KEYCATCH_CGAME ; 
 int KEYCATCH_MESSAGE ; 
 int KEYCATCH_UI ; 
 int NUM_CON_TIMES ; 
 scalar_t__ PM_INTERMISSION ; 
 scalar_t__ SCREEN_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*,float) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,short) ; 
 scalar_t__ SMALLCHAR_HEIGHT ; 
 int SMALLCHAR_WIDTH ; 
 int /*<<< orphan*/  chatField ; 
 scalar_t__ chat_team ; 
 TYPE_8__ cl ; 
 TYPE_7__* cl_conXOffset ; 
 TYPE_6__ cls ; 
 TYPE_5__ con ; 
 TYPE_4__* con_notifytime ; 
 int /*<<< orphan*/ ** g_color_table ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_3__ re ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6 (void)
{
	int		x, v;
	short	*text;
	int		i;
	int		time;
	int		skip;
	int		currentColor;

	currentColor = 7;
	re.SetColor( g_color_table[currentColor] );

	v = 0;
	for (i= con.current-NUM_CON_TIMES+1 ; i<=con.current ; i++)
	{
		if (i < 0)
			continue;
		time = con.times[i % NUM_CON_TIMES];
		if (time == 0)
			continue;
		time = cls.realtime - time;
		if (time > con_notifytime->value*1000)
			continue;
		text = con.text + (i % con.totallines)*con.linewidth;

		if (cl.snap.ps.pm_type != PM_INTERMISSION && cls.keyCatchers & (KEYCATCH_UI | KEYCATCH_CGAME) ) {
			continue;
		}

		for (x = 0 ; x < con.linewidth ; x++) {
			if ( ( text[x] & 0xff ) == ' ' ) {
				continue;
			}
			if ( ( (text[x]>>8)&7 ) != currentColor ) {
				currentColor = (text[x]>>8)&7;
				re.SetColor( g_color_table[currentColor] );
			}
			FUNC2( cl_conXOffset->integer + con.xadjust + (x+1)*SMALLCHAR_WIDTH, v, text[x] & 0xff );
		}

		v += SMALLCHAR_HEIGHT;
	}

	re.SetColor( NULL );

	if (cls.keyCatchers & (KEYCATCH_UI | KEYCATCH_CGAME) ) {
		return;
	}

	// draw the chat line
	if ( cls.keyCatchers & KEYCATCH_MESSAGE )
	{
		if (chat_team)
		{
			FUNC1 (8, v, "say_team:", 1.0f );
			skip = 11;
		}
		else
		{
			FUNC1 (8, v, "say:", 1.0f );
			skip = 5;
		}

		FUNC0( &chatField, skip * BIGCHAR_WIDTH, v,
			SCREEN_WIDTH - ( skip + 1 ) * BIGCHAR_WIDTH, qtrue );

		v += BIGCHAR_HEIGHT;
	}

}