#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_6__ {scalar_t__ fraction; void* allsolid; void* startsolid; } ;
struct TYPE_5__ {double* offset; float radius; } ;
struct TYPE_7__ {double* start; TYPE_2__ trace; TYPE_1__ sphere; } ;
typedef  TYPE_3__ traceWork_t ;
typedef  int /*<<< orphan*/  clipHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double*,double*) ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC3 (double*,double*) ; 
 float FUNC4 (double*) ; 
 int /*<<< orphan*/  FUNC5 (double*,double*,double*) ; 
 void* qtrue ; 

void FUNC6( traceWork_t *tw, clipHandle_t model ) {
	int i;
	vec3_t mins, maxs;
	vec3_t top, bottom;
	vec3_t p1, p2, tmp;
	vec3_t offset, symetricSize[2];
	float radius, halfwidth, halfheight, offs, r;

	FUNC0(model, mins, maxs);

	FUNC2(tw->start, tw->sphere.offset, top);
	FUNC5(tw->start, tw->sphere.offset, bottom);
	for ( i = 0 ; i < 3 ; i++ ) {
		offset[i] = ( mins[i] + maxs[i] ) * 0.5;
		symetricSize[0][i] = mins[i] - offset[i];
		symetricSize[1][i] = maxs[i] - offset[i];
	}
	halfwidth = symetricSize[ 1 ][ 0 ];
	halfheight = symetricSize[ 1 ][ 2 ];
	radius = ( halfwidth > halfheight ) ? halfheight : halfwidth;
	offs = halfheight - radius;

	r = FUNC1(tw->sphere.radius + radius);
	// check if any of the spheres overlap
	FUNC3(offset, p1);
	p1[2] += offs;
	FUNC5(p1, top, tmp);
	if ( FUNC4(tmp) < r ) {
		tw->trace.startsolid = tw->trace.allsolid = qtrue;
		tw->trace.fraction = 0;
	}
	FUNC5(p1, bottom, tmp);
	if ( FUNC4(tmp) < r ) {
		tw->trace.startsolid = tw->trace.allsolid = qtrue;
		tw->trace.fraction = 0;
	}
	FUNC3(offset, p2);
	p2[2] -= offs;
	FUNC5(p2, top, tmp);
	if ( FUNC4(tmp) < r ) {
		tw->trace.startsolid = tw->trace.allsolid = qtrue;
		tw->trace.fraction = 0;
	}
	FUNC5(p2, bottom, tmp);
	if ( FUNC4(tmp) < r ) {
		tw->trace.startsolid = tw->trace.allsolid = qtrue;
		tw->trace.fraction = 0;
	}
	// if between cylinder up and lower bounds
	if ( (top[2] >= p1[2] && top[2] <= p2[2]) ||
		(bottom[2] >= p1[2] && bottom[2] <= p2[2]) ) {
		// 2d coordinates
		top[2] = p1[2] = 0;
		// if the cylinders overlap
		FUNC5(top, p1, tmp);
		if ( FUNC4(tmp) < r ) {
			tw->trace.startsolid = tw->trace.allsolid = qtrue;
			tw->trace.fraction = 0;
		}
	}
}