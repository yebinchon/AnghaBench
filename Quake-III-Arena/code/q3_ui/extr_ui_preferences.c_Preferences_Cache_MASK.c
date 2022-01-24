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
struct TYPE_2__ {int /*<<< orphan*/ * crosshairShader; } ;

/* Variables and functions */
 int /*<<< orphan*/  ART_BACK0 ; 
 int /*<<< orphan*/  ART_BACK1 ; 
 int /*<<< orphan*/  ART_FRAMEL ; 
 int /*<<< orphan*/  ART_FRAMER ; 
 int NUM_CROSSHAIRS ; 
 TYPE_1__ s_preferences ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char) ; 

void FUNC2( void ) {
	int		n;

	FUNC0( ART_FRAMEL );
	FUNC0( ART_FRAMER );
	FUNC0( ART_BACK0 );
	FUNC0( ART_BACK1 );
	for( n = 0; n < NUM_CROSSHAIRS; n++ ) {
		s_preferences.crosshairShader[n] = FUNC0( FUNC1("gfx/2d/crosshair%c", 'a' + n ) );
	}
}