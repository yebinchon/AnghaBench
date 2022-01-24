#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int id; } ;
typedef  TYPE_2__ menucommon_s ;
struct TYPE_4__ {size_t curvalue; } ;
struct TYPE_6__ {TYPE_1__ list; int /*<<< orphan*/ * fs_gameList; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
#define  ID_BACK 129 
#define  ID_GO 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__ s_mods ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( void *ptr, int event ) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch ( ((menucommon_s*)ptr)->id ) {
	case ID_GO:
		FUNC2( "fs_game", s_mods.fs_gameList[s_mods.list.curvalue] );
		FUNC1( EXEC_APPEND, "vid_restart;" );
		FUNC0();
		break;

	case ID_BACK:
		FUNC0();
		break;
	}
}