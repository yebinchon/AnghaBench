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
typedef  scalar_t__ u32 ;
struct card_direntry {int* gamecode; int* filename; int* company; scalar_t__ length; } ;
struct card_dat {struct card_direntry* entries; } ;
struct card_bat {scalar_t__ freeblocks; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/ * cardcallback ;
struct TYPE_8__ {int chn; int filenum; } ;
typedef  TYPE_1__ card_file ;
struct TYPE_9__ {scalar_t__ sector_size; TYPE_1__* curr_file; int /*<<< orphan*/ * card_api_cb; } ;
typedef  TYPE_2__ card_block ;

/* Variables and functions */
 int CARD_ERROR_EXIST ; 
 int CARD_ERROR_FATAL_ERROR ; 
 int CARD_ERROR_INSSPACE ; 
 int CARD_ERROR_NAMETOOLONG ; 
 int CARD_ERROR_NOENT ; 
 scalar_t__ CARD_FILENAMELEN ; 
 scalar_t__ CARD_MAXFILES ; 
 int FUNC0 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __card_createfatcallback ; 
 int /*<<< orphan*/ * __card_defaultapicallback ; 
 struct card_bat* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int,TYPE_2__**) ; 
 struct card_dat* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int* card_company ; 
 int* card_gamecode ; 
 scalar_t__ FUNC5 (int*,...) ; 
 int /*<<< orphan*/  FUNC6 (int*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (char const*) ; 

s32 FUNC9(s32 chn,const char *filename,u32 size,card_file *file,cardcallback callback)
{
	u32 i,len;
	s32 ret,filenum;
	cardcallback cb = NULL;
	card_block *card = NULL;
	struct card_bat *fatblock = NULL;
	struct card_dat *dirblock = NULL;
	struct card_direntry *entry = NULL;
	len = FUNC8(filename);
	if(len>CARD_FILENAMELEN) return CARD_ERROR_NAMETOOLONG;

	if((ret=FUNC2(chn,&card))<0) return ret;
	if(size<=0 || size%card->sector_size) return CARD_ERROR_FATAL_ERROR;

	dirblock = FUNC3(card);

	filenum = -1;
	entry = dirblock->entries;
	for(i=0;i<CARD_MAXFILES;i++) {
		if(entry[i].gamecode[0]==0xff) {
			if(filenum==-1) filenum = i;
		} else if(FUNC5(entry[i].filename,filename,len)==0) {
			if((card_gamecode[0]==0xff || card_company[0]==0xff)
				|| ((card_gamecode[0]!=0xff && FUNC5(entry[i].gamecode,card_gamecode,4)==0)
				&& (card_company[0]!=0xff && FUNC5(entry[i].company,card_company,2)==0))) {
				FUNC4(card,CARD_ERROR_EXIST);
				return CARD_ERROR_EXIST;
			}
		}
	}
	if(filenum==-1) {
		FUNC4(card,CARD_ERROR_NOENT);
		return CARD_ERROR_NOENT;
	}

	fatblock = FUNC1(card);
	if((fatblock->freeblocks*card->sector_size)<size) {
		FUNC4(card,CARD_ERROR_INSSPACE);
		return CARD_ERROR_INSSPACE;
	}

	cb = callback;
	if(!cb) cb = __card_defaultapicallback;
	card->card_api_cb = cb;

	entry[filenum].length = size/card->sector_size;
	FUNC7(entry[filenum].filename,0,CARD_FILENAMELEN);
	FUNC6(entry[filenum].filename,filename,len+1);

	card->curr_file = file;
	file->chn = chn;
	file->filenum = filenum;
	if((ret=FUNC0(chn,(size/card->sector_size),__card_createfatcallback))<0) {
		FUNC4(card,ret);
		return ret;
	}

	return 0;
}