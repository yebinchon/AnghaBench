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
struct module {int num_patterns; int num_instruments; int num_samples; struct module* instruments; struct module* samples; struct module* data; struct module* patterns; struct module* sequence; struct module* default_panning; } ;
struct instrument {int num_patterns; int num_instruments; int num_samples; struct instrument* instruments; struct instrument* samples; struct instrument* data; struct instrument* patterns; struct instrument* sequence; struct instrument* default_panning; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct module*) ; 

void FUNC1( struct module *module ) {
	int idx, sam;
	struct instrument *instrument;
	FUNC0( module->default_panning );
	FUNC0( module->sequence );
	if( module->patterns ) {
		for( idx = 0; idx < module->num_patterns; idx++ ) {
			FUNC0( module->patterns[ idx ].data );
		}
		FUNC0( module->patterns );
	}
	if( module->instruments ) {
		for( idx = 0; idx <= module->num_instruments; idx++ ) {
			instrument = &module->instruments[ idx ];
			if( instrument->samples ) {
				for( sam = 0; sam < instrument->num_samples; sam++ ) {
					FUNC0( instrument->samples[ sam ].data );
				}
				FUNC0( instrument->samples );
			}
		}
		FUNC0( module->instruments );
	}
	FUNC0( module );
}