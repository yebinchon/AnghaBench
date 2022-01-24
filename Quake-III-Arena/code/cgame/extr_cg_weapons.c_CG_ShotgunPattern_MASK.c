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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DEFAULT_SHOTGUN_COUNT ; 
 int DEFAULT_SHOTGUN_SPREAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6( vec3_t origin, vec3_t origin2, int seed, int otherEntNum ) {
	int			i;
	float		r, u;
	vec3_t		end;
	vec3_t		forward, right, up;

	// derive the right and up vectors from the forward vector, because
	// the client won't have any other information
	FUNC5( origin2, forward );
	FUNC2( right, forward );
	FUNC1( forward, right, up );

	// generate the "random" spread pattern
	for ( i = 0 ; i < DEFAULT_SHOTGUN_COUNT ; i++ ) {
		r = FUNC3( &seed ) * DEFAULT_SHOTGUN_SPREAD * 16;
		u = FUNC3( &seed ) * DEFAULT_SHOTGUN_SPREAD * 16;
		FUNC4( origin, 8192 * 16, forward, end);
		FUNC4 (end, r, right, end);
		FUNC4 (end, u, up, end);

		FUNC0( origin, end, otherEntNum );
	}
}