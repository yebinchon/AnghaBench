#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  playerInfo_t ;
struct TYPE_2__ {int /*<<< orphan*/  playerinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANIM_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ s_controls ; 

__attribute__((used)) static void FUNC4( void )
{
	FUNC3( &s_controls.playerinfo, 0, sizeof(playerInfo_t) );

	FUNC2( &s_controls.playerinfo, FUNC1( "model" ) );

	FUNC0( ANIM_IDLE );
}