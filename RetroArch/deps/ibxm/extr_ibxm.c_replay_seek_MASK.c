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
struct replay {int sample_rate; int /*<<< orphan*/  tempo; int /*<<< orphan*/ * channels; TYPE_1__* module; } ;
struct TYPE_2__ {int num_channels; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct replay*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct replay*) ; 

int FUNC4( struct replay *replay, int sample_pos ) {
	int idx, tick_len, current_pos = 0;
	FUNC2( replay, 0 );
	tick_len = FUNC0( replay->tempo, replay->sample_rate );
	while( ( sample_pos - current_pos ) >= tick_len ) {
		for( idx = 0; idx < replay->module->num_channels; idx++ ) {
			FUNC1( &replay->channels[ idx ],
				tick_len * 2, replay->sample_rate * 2 );
		}
		current_pos += tick_len;
		FUNC3( replay );
		tick_len = FUNC0( replay->tempo, replay->sample_rate );
	}
	return current_pos;
}