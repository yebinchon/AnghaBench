#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t s32 ;
struct TYPE_4__ {scalar_t__ result; int /*<<< orphan*/ * card_api_cb; int /*<<< orphan*/  attached; } ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 scalar_t__ CARD_ERROR_BUSY ; 
 size_t CARD_ERROR_FATAL_ERROR ; 
 size_t CARD_ERROR_NOCARD ; 
 size_t CARD_ERROR_READY ; 
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cardmap ; 

__attribute__((used)) static s32 FUNC2(s32 chn,card_block **card)
{
	s32 ret;
	u32 level;
	card_block *rcard = NULL;

	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_FATAL_ERROR;

	FUNC0(level);
	rcard = &cardmap[chn];
	if(!rcard->attached) {
		FUNC1(level);
		return CARD_ERROR_NOCARD;
	}

	ret = CARD_ERROR_BUSY;
	if(rcard->result!=CARD_ERROR_BUSY) {
		rcard->result = CARD_ERROR_BUSY;
		rcard->card_api_cb = NULL;
		*card = rcard;
		ret = CARD_ERROR_READY;
	}
	FUNC1(level);
	return ret;
}