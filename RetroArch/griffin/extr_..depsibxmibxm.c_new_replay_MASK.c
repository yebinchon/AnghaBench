#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct replay {int sample_rate; int interpolation; int* ramp_buf; struct channel* channels; struct module* module; } ;
struct module {int num_channels; } ;
struct channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct replay*) ; 
 int /*<<< orphan*/  FUNC2 (struct replay*,int /*<<< orphan*/ ) ; 

struct replay* FUNC3( struct module *module, int sample_rate, int interpolation ) {
	struct replay *replay = (struct replay*)FUNC0( 1, sizeof( struct replay ) );
	if( replay ) {
		replay->module = module;
		replay->sample_rate = sample_rate;
		replay->interpolation = interpolation;
		replay->ramp_buf = (int*)FUNC0( 128, sizeof( int ) );
		replay->channels = (struct channel*)FUNC0( module->num_channels, sizeof( struct channel ) );
		if( replay->ramp_buf && replay->channels ) {
			FUNC2( replay, 0 );
		} else {
			FUNC1( replay );
			replay = NULL;
		}
	}
	return replay;
}