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
typedef  int /*<<< orphan*/  u16 ;
struct card_dircntrl {int /*<<< orphan*/  chksum2; int /*<<< orphan*/  chksum1; int /*<<< orphan*/  updated; } ;
typedef  size_t s32 ;
typedef  int /*<<< orphan*/  cardcallback ;
struct TYPE_4__ {int sector_size; scalar_t__ workarea; int /*<<< orphan*/  card_erase_cb; int /*<<< orphan*/  attached; } ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 size_t CARD_ERROR_FATAL_ERROR ; 
 size_t CARD_ERROR_NOCARD ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __card_direrasecallback ; 
 void* FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (size_t,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* cardmap ; 

__attribute__((used)) static s32 FUNC4(s32 chn,cardcallback callback)
{
	card_block *card = NULL;
	void *dirblock = NULL;
	struct card_dircntrl *dircntrl = NULL;
	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_FATAL_ERROR;
	card = &cardmap[chn];

	if(!card->attached) return CARD_ERROR_NOCARD;

	dirblock = FUNC2(card);
	dircntrl = dirblock+8128;
	++dircntrl->updated;
	FUNC1((u16*)dirblock,0x1ffc,&dircntrl->chksum1,&dircntrl->chksum2);
	FUNC0(dirblock,0x2000);
	card->card_erase_cb = callback;

	return FUNC3(chn,(((u32)dirblock-(u32)card->workarea)>>13)*card->sector_size,__card_direrasecallback);
}