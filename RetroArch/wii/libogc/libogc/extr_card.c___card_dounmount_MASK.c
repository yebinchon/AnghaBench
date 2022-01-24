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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t s32 ;
struct TYPE_3__ {size_t result; int /*<<< orphan*/  timeout_svc; scalar_t__ mount_step; scalar_t__ attached; } ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_2 ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cardmap ; 

__attribute__((used)) static void FUNC5(s32 chn,s32 result)
{
	u32 level;
	card_block *card;

	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return;
	card = &cardmap[chn];

	FUNC3(level);
	if(card->attached) {
		card->attached = 0;
		card->mount_step = 0;
		card->result = result;
		FUNC1(chn,NULL);
		FUNC0(chn);
		FUNC2(card->timeout_svc);
	}
	FUNC4(level);
}