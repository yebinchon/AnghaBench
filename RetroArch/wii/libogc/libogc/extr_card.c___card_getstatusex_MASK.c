#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct card_direntry {int dummy; } ;
struct card_dat {int /*<<< orphan*/ * entries; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  card_block ;

/* Variables and functions */
 scalar_t__ CARD_ERROR_BROKEN ; 
 scalar_t__ CARD_ERROR_FATAL_ERROR ; 
 scalar_t__ CARD_ERROR_NOCARD ; 
 scalar_t__ CARD_ERROR_READY ; 
 scalar_t__ CARD_MAXFILES ; 
 scalar_t__ EXI_CHANNEL_0 ; 
 scalar_t__ EXI_CHANNEL_2 ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ **) ; 
 struct card_dat* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct card_direntry*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static s32 FUNC4(s32 chn,s32 fileno,struct card_direntry *entry)
{
	s32 ret;
	card_block *card = NULL;
	struct card_dat *dirblock = NULL;

	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
	if(fileno<0 || fileno>=CARD_MAXFILES) return CARD_ERROR_FATAL_ERROR;
	if((ret=FUNC0(chn,&card))<0) return ret;

	ret = CARD_ERROR_BROKEN;
	dirblock = FUNC1(card);
	if(dirblock) {
		ret = CARD_ERROR_READY;
		FUNC3(entry,&dirblock->entries[fileno],sizeof(struct card_direntry));
	}
	return FUNC2(card,ret);
}