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
typedef  size_t s32 ;
typedef  int /*<<< orphan*/  cardcallback ;
struct TYPE_3__ {int* cmd; int cmd_sector_addr; int cmd_len; int* workarea; int latency; int /*<<< orphan*/ * card_tx_cb; int /*<<< orphan*/  cmd_mode; int /*<<< orphan*/  cmd_usr_buf; scalar_t__ cmd_retries; } ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 size_t CARD_ERROR_NOCARD ; 
 size_t CARD_ERROR_READY ; 
 int CARD_READSIZE ; 
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_2 ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXI_READ ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  EXI_WRITE ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __card_txhandler ; 
 TYPE_1__* cardmap ; 

__attribute__((used)) static s32 FUNC5(s32 chn,cardcallback callback)
{
	u32 err;
	s32 ret;
	card_block *card = NULL;
	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
	card = &cardmap[chn];

	card->cmd[0] = 0x52;
	card->cmd[1] = (card->cmd_sector_addr&0xFE0000)>>17;
	card->cmd[2] = (card->cmd_sector_addr&0x01FE00)>>9;
	card->cmd[3] = (card->cmd_sector_addr&0x000180)>>7;
	card->cmd[4] = (card->cmd_sector_addr&0x00007F);
	card->cmd_len = 5;
	card->cmd_mode = EXI_READ;
	card->cmd_retries = 0;

	ret = FUNC4(chn,callback,NULL);
	if(ret<0) return ret;

	err = 0;
	if(FUNC2(chn,card->cmd,card->cmd_len,EXI_WRITE)==0) err |= 0x01;
	if(FUNC2(chn,card->workarea+CARD_READSIZE,card->latency,EXI_WRITE)==0) err |= 0x02;
	if(FUNC1(chn,card->cmd_usr_buf,CARD_READSIZE,card->cmd_mode,__card_txhandler)==0) err |= 0x04;

	if(err) {
		card->card_tx_cb = NULL;
		FUNC0(chn);
		FUNC3(chn);
		return CARD_ERROR_NOCARD;
	}
	return CARD_ERROR_READY;
}