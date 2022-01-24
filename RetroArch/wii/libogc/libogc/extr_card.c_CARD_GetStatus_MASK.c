#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct card_direntry {int length; int /*<<< orphan*/  commentaddr; int /*<<< orphan*/  iconspeed; int /*<<< orphan*/  iconfmt; int /*<<< orphan*/  iconaddr; int /*<<< orphan*/  bannerfmt; int /*<<< orphan*/  lastmodified; int /*<<< orphan*/  filename; int /*<<< orphan*/  company; int /*<<< orphan*/  gamecode; } ;
struct card_dat {struct card_direntry* entries; } ;
typedef  scalar_t__ s32 ;
struct TYPE_8__ {int len; int /*<<< orphan*/  comment_addr; int /*<<< orphan*/  icon_speed; int /*<<< orphan*/  icon_fmt; int /*<<< orphan*/  icon_addr; int /*<<< orphan*/  banner_fmt; int /*<<< orphan*/  time; int /*<<< orphan*/  filename; int /*<<< orphan*/  company; int /*<<< orphan*/  gamecode; } ;
typedef  TYPE_1__ card_stat ;
struct TYPE_9__ {int sector_size; } ;
typedef  TYPE_2__ card_block ;

/* Variables and functions */
 scalar_t__ CARD_ERROR_FATAL_ERROR ; 
 scalar_t__ CARD_ERROR_NOCARD ; 
 int /*<<< orphan*/  CARD_ERROR_READY ; 
 int CARD_FILENAMELEN ; 
 scalar_t__ CARD_MAXFILES ; 
 scalar_t__ EXI_CHANNEL_0 ; 
 scalar_t__ EXI_CHANNEL_2 ; 
 scalar_t__ FUNC0 (scalar_t__,TYPE_2__**) ; 
 struct card_dat* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct card_direntry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

s32 FUNC5(s32 chn,s32 fileno,card_stat *stats)
{
	s32 ret;
	card_block *card = NULL;
	struct card_dat *dirblock = NULL;
	struct card_direntry *entry = NULL;

	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
	if(fileno<0 || fileno>=CARD_MAXFILES) return CARD_ERROR_FATAL_ERROR;

	if((ret=FUNC0(chn,&card))<0) return ret;

	dirblock = FUNC1(card);
	if(dirblock) {
		entry = &dirblock->entries[fileno];
		FUNC4(stats->gamecode,entry->gamecode,4);
		FUNC4(stats->company,entry->company,2);
		FUNC4(stats->filename,entry->filename,CARD_FILENAMELEN);
		stats->len = entry->length*card->sector_size;
		stats->time = entry->lastmodified;
		stats->banner_fmt = entry->bannerfmt;
		stats->icon_addr = entry->iconaddr;
		stats->icon_fmt = entry->iconfmt;
		stats->icon_speed = entry->iconspeed;
		stats->comment_addr = entry->commentaddr;
		FUNC3(entry,stats);
	}

	return FUNC2(card,CARD_ERROR_READY);
}