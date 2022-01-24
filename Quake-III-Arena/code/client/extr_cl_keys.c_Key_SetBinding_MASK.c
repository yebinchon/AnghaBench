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
struct TYPE_2__ {scalar_t__ binding; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVAR_ARCHIVE ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  cvar_modifiedFlags ; 
 TYPE_1__* keys ; 

void FUNC2( int keynum, const char *binding ) {
	if ( keynum == -1 ) {
		return;
	}

	// free old bindings
	if ( keys[ keynum ].binding ) {
		FUNC1( keys[ keynum ].binding );
	}
		
	// allocate memory for new binding
	keys[keynum].binding = FUNC0( binding );

	// consider this like modifying an archived cvar, so the
	// file write will be triggered at the next oportunity
	cvar_modifiedFlags |= CVAR_ARCHIVE;
}