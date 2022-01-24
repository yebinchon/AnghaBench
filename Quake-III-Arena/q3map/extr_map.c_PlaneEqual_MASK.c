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
typedef  scalar_t__ vec_t ;
typedef  scalar_t__* vec3_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_3__ {scalar_t__* normal; scalar_t__ dist; } ;
typedef  TYPE_1__ plane_t ;

/* Variables and functions */
 scalar_t__ DIST_EPSILON ; 
 scalar_t__ NORMAL_EPSILON ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean	FUNC1 (plane_t *p, vec3_t normal, vec_t dist)
{
#if 1
	if (
	   FUNC0(p->normal[0] - normal[0]) < NORMAL_EPSILON
	&& FUNC0(p->normal[1] - normal[1]) < NORMAL_EPSILON
	&& FUNC0(p->normal[2] - normal[2]) < NORMAL_EPSILON
	&& FUNC0(p->dist - dist) < DIST_EPSILON )
		return qtrue;
#else
	if (p->normal[0] == normal[0]
		&& p->normal[1] == normal[1]
		&& p->normal[2] == normal[2]
		&& p->dist == dist)
		return qtrue;
#endif
	return qfalse;
}