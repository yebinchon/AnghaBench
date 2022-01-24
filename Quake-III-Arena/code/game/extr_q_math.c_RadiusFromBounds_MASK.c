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
typedef  float* vec3_t ;

/* Variables and functions */
 float FUNC0 (float*) ; 
 float FUNC1 (float) ; 

float FUNC2( const vec3_t mins, const vec3_t maxs ) {
	int		i;
	vec3_t	corner;
	float	a, b;

	for (i=0 ; i<3 ; i++) {
		a = FUNC1( mins[i] );
		b = FUNC1( maxs[i] );
		corner[i] = a > b ? a : b;
	}

	return FUNC0 (corner);
}