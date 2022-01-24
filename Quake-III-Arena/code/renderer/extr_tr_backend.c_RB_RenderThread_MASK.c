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

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  renderThreadActive ; 

void FUNC2( void ) {
	const void	*data;

	// wait for either a rendering command or a quit command
	while ( 1 ) {
		// sleep until we have work to do
		data = FUNC0();

		if ( !data ) {
			return;	// all done, renderer is shutting down
		}

		renderThreadActive = qtrue;

		FUNC1( data );

		renderThreadActive = qfalse;
	}
}