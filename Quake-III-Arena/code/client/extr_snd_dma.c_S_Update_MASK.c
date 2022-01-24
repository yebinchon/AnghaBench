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
struct TYPE_6__ {TYPE_1__* thesfx; scalar_t__ rightvol; scalar_t__ leftvol; } ;
typedef  TYPE_2__ channel_t ;
struct TYPE_7__ {int integer; } ;
struct TYPE_5__ {int /*<<< orphan*/  soundName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,...) ; 
 int MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* s_channels ; 
 int /*<<< orphan*/  s_paintedtime ; 
 TYPE_3__* s_show ; 
 scalar_t__ s_soundMuted ; 
 int /*<<< orphan*/  s_soundStarted ; 

void FUNC4( void ) {
	int			i;
	int			total;
	channel_t	*ch;

	if ( !s_soundStarted || s_soundMuted ) {
		FUNC0 ("not started or muted\n");
		return;
	}

	//
	// debugging output
	//
	if ( s_show->integer == 2 ) {
		total = 0;
		ch = s_channels;
		for (i=0 ; i<MAX_CHANNELS; i++, ch++) {
			if (ch->thesfx && (ch->leftvol || ch->rightvol) ) {
				FUNC1 ("%f %f %s\n", ch->leftvol, ch->rightvol, ch->thesfx->soundName);
				total++;
			}
		}
		
		FUNC1 ("----(%i)---- painted: %i\n", total, s_paintedtime);
	}

	// add raw data from streamed samples
	FUNC2();

	// mix some sound
	FUNC3();
}