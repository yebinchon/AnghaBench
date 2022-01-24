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
struct TYPE_10__ {int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_8__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_9__ {int /*<<< orphan*/  origin; TYPE_1__ pos; } ;
struct TYPE_11__ {TYPE_3__ r; TYPE_2__ s; int /*<<< orphan*/  model; } ;
typedef  TYPE_4__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 

void FUNC3( gentity_t *ent ) {
	FUNC2( ent, ent->model );
	FUNC0( ent );
	FUNC1( ent->s.origin, ent->s.pos.trBase );
	FUNC1( ent->s.origin, ent->r.currentOrigin );
}