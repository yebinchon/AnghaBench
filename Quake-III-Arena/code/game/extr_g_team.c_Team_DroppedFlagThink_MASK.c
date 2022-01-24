#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* item; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_4__ {scalar_t__ giTag; } ;

/* Variables and functions */
 scalar_t__ PW_BLUEFLAG ; 
 scalar_t__ PW_NEUTRALFLAG ; 
 scalar_t__ PW_REDFLAG ; 
 int TEAM_BLUE ; 
 int TEAM_FREE ; 
 int TEAM_RED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(gentity_t *ent) {
	int		team = TEAM_FREE;

	if( ent->item->giTag == PW_REDFLAG ) {
		team = TEAM_RED;
	}
	else if( ent->item->giTag == PW_BLUEFLAG ) {
		team = TEAM_BLUE;
	}
	else if( ent->item->giTag == PW_NEUTRALFLAG ) {
		team = TEAM_FREE;
	}

	FUNC1( FUNC0( team ), team );
	// Reset Flag will delete this entity
}