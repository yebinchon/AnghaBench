#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct card_direntry {int /*<<< orphan*/  block; } ;
struct card_dat {struct card_direntry* entries; } ;
typedef  size_t s32 ;
typedef  int /*<<< orphan*/ * cardcallback ;
struct TYPE_6__ {int /*<<< orphan*/ * card_api_cb; int /*<<< orphan*/  curr_fileblock; } ;
typedef  TYPE_1__ card_block ;

/* Variables and functions */
 int /*<<< orphan*/ * __card_defaultapicallback ; 
 size_t FUNC0 (size_t,TYPE_1__**) ; 
 struct card_dat* FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (TYPE_1__*,char const*,char const*,char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t) ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __delete_callback ; 
 scalar_t__ card_company ; 
 scalar_t__ card_gamecode ; 
 int /*<<< orphan*/  FUNC5 (struct card_direntry*,int,int) ; 

s32 FUNC6(s32 chn,const char *filename,cardcallback callback)
{
	s32 ret,fileno;
	cardcallback cb = NULL;
	card_block *card = NULL;
	struct card_dat *dirblock = NULL;
	struct card_direntry *entry = NULL;
	if((ret=FUNC0(chn,&card))<0) return ret;
	if((ret=FUNC2(card,filename,(const char*)card_gamecode,(const char*)card_company,&fileno))<0) {
		FUNC3(card,ret);
		return ret;
	}

	dirblock = FUNC1(card);
	entry = &dirblock->entries[fileno];

	card->curr_fileblock = entry->block;
	FUNC5(entry,-1,sizeof(struct card_direntry));

	cb = callback;
	if(!cb) cb = __card_defaultapicallback;
	card->card_api_cb = cb;

	if((ret=FUNC4(chn,__delete_callback))>=0) return ret;

	FUNC3(card,ret);
	return ret;
}