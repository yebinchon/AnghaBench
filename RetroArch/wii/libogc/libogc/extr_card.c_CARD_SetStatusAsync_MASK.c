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
struct card_direntry {int iconaddr; int iconfmt; int commentaddr; int /*<<< orphan*/  lastmodified; int /*<<< orphan*/  iconspeed; int /*<<< orphan*/  bannerfmt; } ;
struct card_dat {struct card_direntry* entries; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  cardcallback ;
struct TYPE_4__ {int icon_addr; int comment_addr; int icon_fmt; int /*<<< orphan*/  icon_speed; int /*<<< orphan*/  banner_fmt; } ;
typedef  TYPE_1__ card_stat ;
typedef  int /*<<< orphan*/  card_block ;

/* Variables and functions */
 scalar_t__ CARD_ERROR_BROKEN ; 
 scalar_t__ CARD_ERROR_FATAL_ERROR ; 
 scalar_t__ CARD_ERROR_NOCARD ; 
 int CARD_ICON_CI ; 
 int CARD_ICON_MASK ; 
 scalar_t__ CARD_MAXFILES ; 
 int CARD_READSIZE ; 
 scalar_t__ EXI_CHANNEL_0 ; 
 scalar_t__ EXI_CHANNEL_2 ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ **) ; 
 struct card_dat* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct card_direntry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

s32 FUNC6(s32 chn,s32 fileno,card_stat *stats,cardcallback callback)
{
	s32 ret;
	card_block *card = NULL;
	struct card_dat *dirblock = NULL;
	struct card_direntry *entry = NULL;

	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
	if(fileno<0 || fileno>=CARD_MAXFILES) return CARD_ERROR_FATAL_ERROR;
	if(stats->icon_addr!=-1 && stats->icon_addr>CARD_READSIZE) return CARD_ERROR_FATAL_ERROR;
	if(stats->comment_addr!=-1 && stats->comment_addr>8128) return CARD_ERROR_FATAL_ERROR;
	if((ret=FUNC0(chn,&card))<0) return ret;

	ret = CARD_ERROR_BROKEN;
	dirblock = FUNC1(card);
	if(dirblock) {
		entry = &dirblock->entries[fileno];
		entry->bannerfmt = stats->banner_fmt;
		entry->iconaddr = stats->icon_addr;
		entry->iconfmt = stats->icon_fmt;
		entry->iconspeed = stats->icon_speed;
		entry->commentaddr = stats->comment_addr;
		FUNC4(entry,stats);

		if(entry->iconaddr==-1) entry->iconfmt = ((entry->iconfmt&~CARD_ICON_MASK)|CARD_ICON_CI);

		entry->lastmodified = FUNC5(NULL);
		if((ret=FUNC3(chn,callback))>=0) return ret;
	}

	return FUNC2(card,ret);
}