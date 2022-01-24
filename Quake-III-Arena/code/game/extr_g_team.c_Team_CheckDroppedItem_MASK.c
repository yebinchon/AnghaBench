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
 int /*<<< orphan*/  FLAG_DROPPED ; 
 scalar_t__ PW_BLUEFLAG ; 
 scalar_t__ PW_NEUTRALFLAG ; 
 scalar_t__ PW_REDFLAG ; 
 int /*<<< orphan*/  TEAM_BLUE ; 
 int /*<<< orphan*/  TEAM_FREE ; 
 int /*<<< orphan*/  TEAM_RED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1( gentity_t *dropped ) {
	if( dropped->item->giTag == PW_REDFLAG ) {
		FUNC0( TEAM_RED, FLAG_DROPPED );
	}
	else if( dropped->item->giTag == PW_BLUEFLAG ) {
		FUNC0( TEAM_BLUE, FLAG_DROPPED );
	}
	else if( dropped->item->giTag == PW_NEUTRALFLAG ) {
		FUNC0( TEAM_FREE, FLAG_DROPPED );
	}
}