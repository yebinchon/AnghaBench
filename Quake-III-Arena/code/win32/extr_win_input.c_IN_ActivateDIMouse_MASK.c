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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  g_pMouse ; 

void FUNC5( void ) {
	HRESULT		hr;

	if (!g_pMouse) {
		return;
	}

	// we may fail to reacquire if the window has been recreated
	hr = FUNC3( g_pMouse );
	if (FUNC2(hr)) {
		if ( !FUNC4() ) {
			FUNC0 ("Falling back to Win32 mouse support...\n");
			FUNC1( "in_mouse", "-1" );
		}
	}
}