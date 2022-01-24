#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const vec3_t ;
struct TYPE_4__ {int entnum; int /*<<< orphan*/  rightvol; int /*<<< orphan*/  leftvol; int /*<<< orphan*/  master_vol; int /*<<< orphan*/  const origin; scalar_t__ fixed_origin; int /*<<< orphan*/  thesfx; } ;
typedef  TYPE_1__ channel_t ;
struct TYPE_5__ {int /*<<< orphan*/  const origin; } ;

/* Variables and functions */
 int MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const* listener_axis ; 
 int listener_number ; 
 int /*<<< orphan*/  const listener_origin ; 
 TYPE_3__* loopSounds ; 
 TYPE_1__* s_channels ; 
 scalar_t__ s_soundMuted ; 
 int /*<<< orphan*/  s_soundStarted ; 

void FUNC3( int entityNum, const vec3_t head, vec3_t axis[3], int inwater ) {
	int			i;
	channel_t	*ch;
	vec3_t		origin;

	if ( !s_soundStarted || s_soundMuted ) {
		return;
	}

	listener_number = entityNum;
	FUNC2(head, listener_origin);
	FUNC2(axis[0], listener_axis[0]);
	FUNC2(axis[1], listener_axis[1]);
	FUNC2(axis[2], listener_axis[2]);

	// update spatialization for dynamic sounds	
	ch = s_channels;
	for ( i = 0 ; i < MAX_CHANNELS ; i++, ch++ ) {
		if ( !ch->thesfx ) {
			continue;
		}
		// anything coming from the view entity will always be full volume
		if (ch->entnum == listener_number) {
			ch->leftvol = ch->master_vol;
			ch->rightvol = ch->master_vol;
		} else {
			if (ch->fixed_origin) {
				FUNC2( ch->origin, origin );
			} else {
				FUNC2( loopSounds[ ch->entnum ].origin, origin );
			}

			FUNC1 (origin, ch->master_vol, &ch->leftvol, &ch->rightvol);
		}
	}

	// add loopsounds
	FUNC0 ();
}