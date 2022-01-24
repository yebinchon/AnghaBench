#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  gitem_t ;
struct TYPE_8__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_9__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_10__ {TYPE_1__ pos; TYPE_2__ apos; } ;
struct TYPE_11__ {TYPE_3__ s; } ;
typedef  TYPE_4__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 size_t PITCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int*) ; 
 size_t YAW ; 
 int FUNC4 () ; 

gentity_t *FUNC5( gentity_t *ent, gitem_t *item, float angle ) {
	vec3_t	velocity;
	vec3_t	angles;

	FUNC2( ent->s.apos.trBase, angles );
	angles[YAW] += angle;
	angles[PITCH] = 0;	// always forward

	FUNC0( angles, velocity, NULL, NULL );
	FUNC3( velocity, 150, velocity );
	velocity[2] += 200 + FUNC4() * 50;
	
	return FUNC1( item, ent->s.pos.trBase, velocity );
}