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
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  SE_MOUSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ g_pMouse ; 

void FUNC3 ( void ) {
	int		mx, my;

	if ( g_pMouse ) {
		FUNC0( &mx, &my );
	} else {
		FUNC1( &mx, &my );
	}

	if ( !mx && !my ) {
		return;
	}

	FUNC2( 0, SE_MOUSE, mx, my, 0, NULL );
}