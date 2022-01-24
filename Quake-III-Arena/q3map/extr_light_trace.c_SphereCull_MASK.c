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
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean	FUNC5( vec3_t start, vec3_t stop, vec3_t origin, float radius ) {
	vec3_t		v;
	float		d;
	vec3_t		dir;
	float		len;
	vec3_t		on;

	FUNC4( stop, start, dir );
	len = FUNC3( dir, dir );

	FUNC4( origin, start, v );
	d = FUNC0( v, dir );
	if ( d > len + radius ) {
		return qtrue;		// too far ahead
	}
	if ( d < -radius ) {
		return qtrue;		// too far behind
	}
	FUNC2( start, d, dir, on );
	
	FUNC4( on, origin, v );

	len = FUNC1( v );

	if ( len > radius ) {
		return qtrue;		// too far to the side
	}

	return qfalse;		// must be traced against
}