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
struct TYPE_3__ {size_t numitems; int /*<<< orphan*/ * itemnames; } ;
struct TYPE_4__ {TYPE_1__ list; int /*<<< orphan*/  fs_gamePtr; int /*<<< orphan*/  descriptionPtr; int /*<<< orphan*/ * descriptionList; int /*<<< orphan*/ * fs_gameList; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__ s_mods ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( char *modDir, char *modDesc ) {
	s_mods.fs_gameList[s_mods.list.numitems] = s_mods.fs_gamePtr;
	FUNC0( s_mods.fs_gamePtr, modDir, 16 );

	s_mods.descriptionList[s_mods.list.numitems] = s_mods.descriptionPtr;
	FUNC0( s_mods.descriptionPtr, modDesc, 48 );

	s_mods.list.itemnames[s_mods.list.numitems] = s_mods.descriptionPtr;
	s_mods.descriptionPtr += FUNC1( s_mods.descriptionPtr ) + 1;
	s_mods.fs_gamePtr += FUNC1( s_mods.fs_gamePtr ) + 1;
	s_mods.list.numitems++;
}