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
struct replay {int sample_rate; int /*<<< orphan*/  interpolation; struct channel* channels; TYPE_1__* module; int /*<<< orphan*/  tempo; } ;
struct channel {int dummy; } ;
struct TYPE_2__ {int num_channels; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct channel*,int*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct channel*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct replay*) ; 
 int /*<<< orphan*/  FUNC6 (struct replay*,int*,int) ; 

int FUNC7( struct replay *replay, int *mix_buf ) {
	struct channel *channel;
	int idx, num_channels, tick_len = FUNC0( replay->tempo, replay->sample_rate );
	/* Clear output buffer. */
	FUNC4( mix_buf, 0, ( tick_len + 65 ) * 4 * sizeof( int ) );
	/* Resample. */
	num_channels = replay->module->num_channels;
	for( idx = 0; idx < num_channels; idx++ ) {
		channel = &replay->channels[ idx ];
		FUNC1( channel, mix_buf, 0, ( tick_len + 65 ) * 2,
			replay->sample_rate * 2, replay->interpolation );
		FUNC2( channel, tick_len * 2, replay->sample_rate * 2 );
	}
	FUNC3( mix_buf, tick_len + 64 );
	FUNC6( replay, mix_buf, tick_len );
	FUNC5( replay );
	return tick_len;
}