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
typedef  int u8 ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  (* cardcallback ) (int,int) ;
struct TYPE_3__ {scalar_t__ cmd_retries; int /*<<< orphan*/  (* card_exi_cb ) (int,int) ;scalar_t__ attached; int /*<<< orphan*/  timeout_svc; } ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 int CARD_ERROR_FATAL_ERROR ; 
 int CARD_ERROR_IOERROR ; 
 int CARD_ERROR_READY ; 
 int EXI_CHANNEL_0 ; 
 int EXI_CHANNEL_2 ; 
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int*) ; 
 int FUNC5 (int) ; 
 TYPE_1__* cardmap ; 

__attribute__((used)) static s32 FUNC6(s32 chn,s32 dev)
{
	u8 status;
	s32 ret = CARD_ERROR_READY;
	card_block *card = NULL;
	cardcallback cb;
	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return 1;
	card = &cardmap[chn];

	FUNC2(card->timeout_svc);
	if(card->attached) {
		if(FUNC0(chn,EXI_DEVICE_0,NULL)==1) {
			if((ret=FUNC4(chn,&status))>=0
				&& (ret=FUNC3(chn))>=0) {
				if(status&0x18) ret = CARD_ERROR_IOERROR;
				else ret = CARD_ERROR_READY;

				if(ret==CARD_ERROR_IOERROR) {
					if((--card->cmd_retries)>0) {
						ret = FUNC5(chn);
						if(ret<0) goto exit;
						return 1;
					}
				}
			}
			FUNC1(chn);
		} else ret = CARD_ERROR_FATAL_ERROR;
exit:
		cb = card->card_exi_cb;
		if(cb) {
			card->card_exi_cb = NULL;
			cb(chn,ret);
		}
	}
	return 1;
}