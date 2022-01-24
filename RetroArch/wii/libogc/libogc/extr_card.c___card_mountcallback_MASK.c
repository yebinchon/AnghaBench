#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t s32 ;
typedef  int /*<<< orphan*/  (* cardcallback ) (size_t,size_t) ;
struct TYPE_5__ {int mount_step; int /*<<< orphan*/  (* card_api_cb ) (size_t,size_t) ;} ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 size_t CARD_ERROR_IOERROR ; 
 size_t CARD_ERROR_NOCARD ; 
 size_t CARD_ERROR_UNLOCKED ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 TYPE_1__* cardmap ; 

__attribute__((used)) static void FUNC4(s32 chn,s32 result)
{
	s32 ret;
	cardcallback cb;
	card_block *card = &cardmap[chn];

	ret = result;
	if(ret==CARD_ERROR_NOCARD || ret==CARD_ERROR_IOERROR) {
		FUNC1(chn,ret);
		FUNC2(card,ret);
	}else if(ret==CARD_ERROR_UNLOCKED) {
		if((ret=FUNC0(chn))>=0) return;
	} else {
		if((++card->mount_step)<7) {
			if((ret=FUNC0(chn))>=0) return;
		} else {
			ret = FUNC3(card);
			FUNC2(card,ret);
		}
	}

	cb = card->card_api_cb;
	card->card_api_cb = NULL;
	if(cb) cb(chn,ret);
}