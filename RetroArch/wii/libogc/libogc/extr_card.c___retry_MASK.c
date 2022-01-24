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
typedef  int u32 ;
typedef  size_t s32 ;
struct TYPE_4__ {int* cmd; int* workarea; int cmd_mode; int /*<<< orphan*/  cmd_usr_buf; int /*<<< orphan*/  latency; int /*<<< orphan*/  cmd_len; } ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 size_t CARD_ERROR_NOCARD ; 
 size_t CARD_ERROR_READY ; 
 int CARD_READSIZE ; 
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_2 ; 
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXI_SPEED16MHZ ; 
 scalar_t__ FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  EXI_WRITE ; 
 int /*<<< orphan*/  __card_txhandler ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* cardmap ; 

__attribute__((used)) static s32 FUNC6(s32 chn)
{
	u32 len;
	card_block *card = NULL;

	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
	card = &cardmap[chn];
	if(FUNC3(chn,EXI_DEVICE_0,EXI_SPEED16MHZ)==0) {
		FUNC4(chn);
		return CARD_ERROR_NOCARD;
	}

	FUNC5(card);

	if(FUNC2(chn,card->cmd,card->cmd_len,EXI_WRITE)==0) {
		FUNC0(chn);
		FUNC4(chn);
		return CARD_ERROR_NOCARD;
	}

	if(card->cmd[0]==0x52) {
		if(FUNC2(chn,card->workarea+CARD_READSIZE,card->latency,EXI_WRITE)==0) {
			FUNC0(chn);
			FUNC4(chn);
			return CARD_ERROR_NOCARD;
		}
	}

	if(card->cmd_mode==-1) {
		FUNC0(chn);
		FUNC4(chn);
		return CARD_ERROR_READY;
	}

	len = 128;
	if(card->cmd[0]==0x52) len  = CARD_READSIZE;
	if(FUNC1(chn,card->cmd_usr_buf,len,card->cmd_mode,__card_txhandler)==0) {
		FUNC0(chn);
		FUNC4(chn);
		return CARD_ERROR_NOCARD;
	}
	return CARD_ERROR_READY;
}