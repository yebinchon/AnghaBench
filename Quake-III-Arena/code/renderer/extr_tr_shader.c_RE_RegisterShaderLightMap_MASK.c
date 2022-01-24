#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  index; scalar_t__ defaultShader; } ;
typedef  TYPE_1__ shader_t ;
typedef  int /*<<< orphan*/  qhandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ MAX_QPATH ; 
 TYPE_1__* FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC2 (char const*) ; 

qhandle_t FUNC3( const char *name, int lightmapIndex ) {
	shader_t	*sh;

	if ( FUNC2( name ) >= MAX_QPATH ) {
		FUNC0( "Shader name exceeds MAX_QPATH\n" );
		return 0;
	}

	sh = FUNC1( name, lightmapIndex, qtrue );

	// we want to return 0 if the shader failed to
	// load for some reason, but R_FindShader should
	// still keep a name allocated for it, so if
	// something calls RE_RegisterShader again with
	// the same name, we don't try looking for it again
	if ( sh->defaultShader ) {
		return 0;
	}

	return sh->index;
}