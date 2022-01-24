#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ id; } ;
typedef  TYPE_1__ menucommon_s ;
struct TYPE_4__ {int /*<<< orphan*/  selectedArenaInfo; } ;

/* Variables and functions */
 int ARENAS_PER_TIER ; 
 scalar_t__ ID_PICTURE0 ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int finalTier ; 
 TYPE_2__ levelMenuInfo ; 
 scalar_t__ selectedArena ; 
 int selectedArenaSet ; 
 int trainingTier ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3( void* ptr, int notification ) {
	if (notification != QM_ACTIVATED) {
		return;
	}

	if ( selectedArenaSet == trainingTier || selectedArenaSet == finalTier ) {
		return;
	}

	selectedArena = ((menucommon_s*)ptr)->id - ID_PICTURE0;
	levelMenuInfo.selectedArenaInfo = FUNC0( selectedArenaSet * ARENAS_PER_TIER + selectedArena );
	FUNC1();

	FUNC2( "ui_spSelection", selectedArenaSet * ARENAS_PER_TIER + selectedArena );
}