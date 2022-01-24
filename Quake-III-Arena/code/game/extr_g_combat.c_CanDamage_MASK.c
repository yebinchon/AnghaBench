#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
struct TYPE_9__ {double fraction; scalar_t__ entityNum; } ;
typedef  TYPE_3__ trace_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_8__ {scalar_t__ number; } ;
struct TYPE_7__ {int /*<<< orphan*/  absmax; int /*<<< orphan*/  absmin; } ;
struct TYPE_10__ {TYPE_2__ s; TYPE_1__ r; } ;
typedef  TYPE_4__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENTITYNUM_NONE ; 
 int /*<<< orphan*/  MASK_SOLID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC1 (double*,double*) ; 
 int /*<<< orphan*/  FUNC2 (double*,double,double*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vec3_origin ; 

qboolean FUNC4 (gentity_t *targ, vec3_t origin) {
	vec3_t	dest;
	trace_t	tr;
	vec3_t	midpoint;

	// use the midpoint of the bounds instead of the origin, because
	// bmodels may have their origin is 0,0,0
	FUNC0 (targ->r.absmin, targ->r.absmax, midpoint);
	FUNC2 (midpoint, 0.5, midpoint);

	FUNC1 (midpoint, dest);
	FUNC3 ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
	if (tr.fraction == 1.0 || tr.entityNum == targ->s.number)
		return qtrue;

	// this should probably check in the plane of projection, 
	// rather than in world coordinate, and also include Z
	FUNC1 (midpoint, dest);
	dest[0] += 15.0;
	dest[1] += 15.0;
	FUNC3 ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
	if (tr.fraction == 1.0)
		return qtrue;

	FUNC1 (midpoint, dest);
	dest[0] += 15.0;
	dest[1] -= 15.0;
	FUNC3 ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
	if (tr.fraction == 1.0)
		return qtrue;

	FUNC1 (midpoint, dest);
	dest[0] -= 15.0;
	dest[1] += 15.0;
	FUNC3 ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
	if (tr.fraction == 1.0)
		return qtrue;

	FUNC1 (midpoint, dest);
	dest[0] -= 15.0;
	dest[1] -= 15.0;
	FUNC3 ( &tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);
	if (tr.fraction == 1.0)
		return qtrue;


	return qfalse;
}