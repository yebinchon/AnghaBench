#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* shader; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ shaderInfo_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int numShaderInfo ; 
 TYPE_1__* shaderInfo ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

shaderInfo_t	*FUNC5( const char *shaderName ) {
	int				i;
	shaderInfo_t	*si;
	char			shader[MAX_QPATH];

	// strip off extension
	FUNC4( shader, shaderName );
	FUNC3( shader );

	// search for it
	for ( i = 0 ; i < numShaderInfo ; i++ ) {
		si = &shaderInfo[ i ];
		if ( !FUNC2( shader, si->shader ) ) {
			if ( !si->width ) {
				FUNC1( si );
			}
			return si;
		}
	}

	si = FUNC0();
	FUNC4( si->shader, shader );

	FUNC1( si );

	return si;
}