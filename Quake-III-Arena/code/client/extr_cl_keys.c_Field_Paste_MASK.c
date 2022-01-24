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
typedef  int /*<<< orphan*/  field_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 

void FUNC4( field_t *edit ) {
	char	*cbd;
	int		pasteLen, i;

	cbd = FUNC1();

	if ( !cbd ) {
		return;
	}

	// send as if typed, so insert / overstrike works properly
	pasteLen = FUNC3( cbd );
	for ( i = 0 ; i < pasteLen ; i++ ) {
		FUNC0( edit, cbd[i] );
	}

	FUNC2( cbd );
}