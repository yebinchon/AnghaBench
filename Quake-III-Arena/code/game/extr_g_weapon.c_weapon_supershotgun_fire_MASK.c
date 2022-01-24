#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_8__ {int eventParm; int /*<<< orphan*/  origin2; TYPE_1__ pos; int /*<<< orphan*/  number; int /*<<< orphan*/  otherEntityNum; } ;
struct TYPE_9__ {TYPE_2__ s; } ;
typedef  TYPE_3__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_SHOTGUN ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  forward ; 
 int /*<<< orphan*/  muzzle ; 
 int FUNC4 () ; 

void FUNC5 (gentity_t *ent) {
	gentity_t		*tent;

	// send shotgun blast
	tent = FUNC0( muzzle, EV_SHOTGUN );
	FUNC3( forward, 4096, tent->s.origin2 );
	FUNC2( tent->s.origin2 );
	tent->s.eventParm = FUNC4() & 255;		// seed for spread pattern
	tent->s.otherEntityNum = ent->s.number;

	FUNC1( tent->s.pos.trBase, tent->s.origin2, tent->s.eventParm, ent );
}