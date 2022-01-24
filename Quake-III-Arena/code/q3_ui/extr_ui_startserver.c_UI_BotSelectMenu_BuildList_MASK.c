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
struct TYPE_2__ {int numBots; int numpages; int* sortedBotNums; scalar_t__ modelpage; } ;

/* Variables and functions */
 int MAX_MODELSPERPAGE ; 
 int /*<<< orphan*/  UI_BotSelectMenu_SortCompare ; 
 int FUNC0 () ; 
 TYPE_1__ botSelectInfo ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( void ) {
	int		n;

	botSelectInfo.modelpage = 0;
	botSelectInfo.numBots = FUNC0();
	botSelectInfo.numpages = botSelectInfo.numBots / MAX_MODELSPERPAGE;
	if( botSelectInfo.numBots % MAX_MODELSPERPAGE ) {
		botSelectInfo.numpages++;
	}

	// initialize the array
	for( n = 0; n < botSelectInfo.numBots; n++ ) {
		botSelectInfo.sortedBotNums[n] = n;
	}

	// now sort it
	FUNC1( botSelectInfo.sortedBotNums, botSelectInfo.numBots, sizeof(botSelectInfo.sortedBotNums[0]), UI_BotSelectMenu_SortCompare );
}