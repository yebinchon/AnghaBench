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
typedef  scalar_t__ sfxHandle_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_LOCAL_SOUND ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC7( void ) {
	int 		i;
	sfxHandle_t	h;
	char		name[256];
	
	i = 1;
	while ( i<FUNC0() ) {
		if ( !FUNC4(FUNC1(i), '.') ) {
			FUNC2( name, sizeof(name), "%s.wav", FUNC1(1) );
		} else {
			FUNC3( name, FUNC1(i), sizeof(name) );
		}
		h = FUNC5( name, qfalse );
		if( h ) {
			FUNC6( h, CHAN_LOCAL_SOUND );
		}
		i++;
	}
}