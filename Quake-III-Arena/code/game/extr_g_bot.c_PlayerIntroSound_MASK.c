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
typedef  int /*<<< orphan*/  model ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
 int MAX_QPATH ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5( const char *modelAndSkin ) {
	char	model[MAX_QPATH];
	char	*skin;

	FUNC1( model, modelAndSkin, sizeof(model) );
	skin = FUNC2( model, '/' );
	if ( skin ) {
		*skin++ = '\0';
	}
	else {
		skin = model;
	}

	if( FUNC0( skin, "default" ) == 0 ) {
		skin = model;
	}

	FUNC3( EXEC_APPEND, FUNC4( "play sound/player/announce/%s.wav\n", skin ) );
}