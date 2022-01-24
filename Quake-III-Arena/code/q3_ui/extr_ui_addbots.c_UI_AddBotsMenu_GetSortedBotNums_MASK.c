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
struct TYPE_2__ {int numBots; int* sortedBotNums; } ;

/* Variables and functions */
 int /*<<< orphan*/  UI_AddBotsMenu_SortCompare ; 
 TYPE_1__ addBotsMenuInfo ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1( void ) {
	int		n;

	// initialize the array
	for( n = 0; n < addBotsMenuInfo.numBots; n++ ) {
		addBotsMenuInfo.sortedBotNums[n] = n;
	}

	FUNC0( addBotsMenuInfo.sortedBotNums, addBotsMenuInfo.numBots, sizeof(addBotsMenuInfo.sortedBotNums[0]), UI_AddBotsMenu_SortCompare );
}