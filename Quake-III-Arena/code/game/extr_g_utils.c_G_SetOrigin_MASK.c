#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_6__ {int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_7__ {int /*<<< orphan*/  trDelta; scalar_t__ trDuration; scalar_t__ trTime; int /*<<< orphan*/  trType; int /*<<< orphan*/  trBase; } ;
struct TYPE_8__ {TYPE_2__ pos; } ;
struct TYPE_9__ {TYPE_1__ r; TYPE_3__ s; } ;
typedef  TYPE_4__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  TR_STATIONARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2( gentity_t *ent, vec3_t origin ) {
	FUNC1( origin, ent->s.pos.trBase );
	ent->s.pos.trType = TR_STATIONARY;
	ent->s.pos.trTime = 0;
	ent->s.pos.trDuration = 0;
	FUNC0( ent->s.pos.trDelta );

	FUNC1( origin, ent->r.currentOrigin );
}