#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  card_block ;
struct TYPE_3__ {int /*<<< orphan*/  timeout_svc; int /*<<< orphan*/  wait_sync_queue; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_ERROR_NOCARD ; 
 int /*<<< orphan*/  CARD_ERROR_READY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  card_company ; 
 int /*<<< orphan*/  card_gamecode ; 
 int card_inited ; 
 int /*<<< orphan*/  card_resetinfo ; 
 TYPE_1__* cardmap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char const*) ; 

s32 FUNC9(const char *gamecode,const char *company)
{
	u32 i,level;

	if(card_inited) return CARD_ERROR_READY;
	if(gamecode && FUNC8(gamecode)<=4) FUNC6(card_gamecode,gamecode,4);
	if(company && FUNC8(company)<=2) FUNC6(card_company,company,2);

	FUNC4(level);
	FUNC0();

	FUNC7(cardmap,0,sizeof(card_block)*2);
	for(i=0;i<2;i++) {
		cardmap[i].result = CARD_ERROR_NOCARD;
		FUNC1(&cardmap[i].wait_sync_queue);
		FUNC2(&cardmap[i].timeout_svc);
	}
	FUNC3(&card_resetinfo);
	card_inited = 1;
	FUNC5(level);
	return CARD_ERROR_READY;
}