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
typedef  int /*<<< orphan*/  traceWork_t ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  numSkyBrushes ; 
 int /*<<< orphan*/  sunDirection ; 

void FUNC3( const vec3_t origin, const vec3_t normal, vec3_t color, traceWork_t *tw ) {
	float		angle;
	vec3_t		sunColor;

	if ( !numSkyBrushes ) {
		return;
	}

	angle = FUNC0( normal, sunDirection );
	if ( angle <= 0 ) {
		return;		// facing away
	}

	FUNC1( origin, tw, sunColor );
	FUNC2( color, angle, sunColor, color );
}