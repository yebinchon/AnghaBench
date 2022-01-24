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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  dsptask_t ;
struct TYPE_3__ {scalar_t__ workarea; int /*<<< orphan*/  dsp_task; } ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t EXI_CHANNEL_2 ; 
 TYPE_1__* cardmap ; 

__attribute__((used)) static void FUNC2(dsptask_t *task)
{
	u32 chn;
	card_block *card = NULL;
	chn = 0;
	while(chn<EXI_CHANNEL_2) {
		card = &cardmap[chn];
		if(&card->dsp_task==task) break;
		chn++;
	}
	if(chn>=EXI_CHANNEL_2) return;

	FUNC1(0xFF000000);
	while(FUNC0());
	FUNC1((u32)card->workarea);
	while(FUNC0());
}