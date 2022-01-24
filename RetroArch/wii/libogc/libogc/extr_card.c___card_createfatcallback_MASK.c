#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct card_direntry {int pad_00; int iconaddr; int iconspeed; int pad_01; int /*<<< orphan*/  lastmodified; scalar_t__ iconfmt; scalar_t__ copytimes; int /*<<< orphan*/  permission; int /*<<< orphan*/  block; int /*<<< orphan*/  company; int /*<<< orphan*/  gamecode; } ;
struct card_dat {struct card_direntry* entries; } ;
typedef  size_t s32 ;
typedef  int /*<<< orphan*/  (* cardcallback ) (size_t,size_t) ;
struct TYPE_6__ {size_t filenum; int /*<<< orphan*/  iblock; scalar_t__ offset; } ;
typedef  TYPE_1__ card_file ;
struct TYPE_7__ {int /*<<< orphan*/  curr_fileblock; TYPE_1__* curr_file; int /*<<< orphan*/  (* card_api_cb ) (size_t,size_t) ;} ;
typedef  TYPE_2__ card_block ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_ATTRIB_PUBLIC ; 
 int CARD_SPEED_FAST ; 
 int CARD_SPEED_MASK ; 
 struct card_dat* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/  (*) (size_t,size_t)) ; 
 int* card_company ; 
 int* card_gamecode ; 
 TYPE_2__* cardmap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(s32 chn,s32 result)
{
	s32 ret;
	cardcallback cb = NULL;
	card_file *file = NULL;
	struct card_direntry *entry = NULL;
	struct card_dat *dirblock = NULL;
	card_block *card = &cardmap[chn];
	cb = card->card_api_cb;
	card->card_api_cb = NULL;

	dirblock = FUNC0(card);

	file = card->curr_file;
	entry = &dirblock->entries[file->filenum];

	FUNC4(entry->gamecode,0,4);
	FUNC4(entry->company,0,2);
	if(card_gamecode[0]!=0xff) FUNC3(entry->gamecode,card_gamecode,4);
	if(card_gamecode[0]!=0xff) FUNC3(entry->company,card_company,2);
	entry->block = card->curr_fileblock;
	entry->permission = CARD_ATTRIB_PUBLIC;
	entry->pad_00 = 0xff;
	entry->copytimes = 0;
	entry->iconaddr = -1;
	entry->iconfmt = 0;
	entry->iconspeed = 0;
	entry->pad_01 = 0xffff;
	entry->iconspeed = (entry->iconspeed&~CARD_SPEED_MASK)|CARD_SPEED_FAST;
	entry->lastmodified = FUNC5(NULL);

	file->offset = 0;
	file->iblock = card->curr_fileblock;

	if((ret=FUNC2(chn,cb))<0) {
		FUNC1(card,ret);
		if(cb) cb(chn,ret);
	}
}