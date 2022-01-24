#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_5__ {int** flash_id; int* flashID_chksum; } ;
typedef  TYPE_1__ syssramex ;
typedef  size_t s32 ;
struct TYPE_6__ {int mount_step; int cid; int card_size; int sector_size; int blocks; scalar_t__ workarea; scalar_t__ key; int /*<<< orphan*/  latency; } ;
typedef  TYPE_2__ card_block ;

/* Variables and functions */
 size_t CARD_ERROR_IOERROR ; 
 size_t CARD_ERROR_NOCARD ; 
 size_t CARD_ERROR_READY ; 
 size_t CARD_ERROR_WRONGDEVICE ; 
 int CARD_STATUS_UNLOCKED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_2 ; 
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int FUNC5 (int,int) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 size_t FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (size_t,size_t) ; 
 size_t FUNC10 (size_t,int) ; 
 int /*<<< orphan*/  __card_exihandler ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  __card_mountcallback ; 
 size_t FUNC12 (size_t,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC13 (size_t,int*) ; 
 size_t FUNC14 (size_t,scalar_t__) ; 
 int /*<<< orphan*/ * card_latency ; 
 int* card_sector_size ; 
 TYPE_2__* cardmap ; 

__attribute__((used)) static s32 FUNC15(s32 chn)
{
	u8 status,kval;
	s32 ret = CARD_ERROR_READY;
	u32 sum;
	u32 id,idx,cnt;
	card_block *card;
	syssramex *sramex;

	if(chn<EXI_CHANNEL_0 || chn>=EXI_CHANNEL_2) return CARD_ERROR_NOCARD;
	card = &cardmap[chn];
	if(card->mount_step==0) {
		ret = 0;
		id = 0;
		if(FUNC1(chn,EXI_DEVICE_0,&id)==0) ret = CARD_ERROR_NOCARD;
		else if(!FUNC11(id)) ret = CARD_ERROR_WRONGDEVICE;

		if(ret<0) goto exit;
		card->cid = id;
		card->card_size = (id&0xfc);
		if(card->card_size) {
			idx = FUNC5(id,23)&0x1c;
			card->sector_size = card_sector_size[idx>>2];
			card->blocks = ((card->card_size<<20)>>3)/card->sector_size;

			if(card->blocks>0x0008) {
				idx = FUNC5(id,26)&0x1c;
				card->latency = card_latency[idx>>2];

				if((ret=FUNC8(chn))<0) goto exit;
				if((ret=FUNC13(chn,&status))<0) goto exit;

				if(FUNC2(chn)==0) {
					ret = CARD_ERROR_NOCARD;
					goto exit;
				}
				if(!(status&CARD_STATUS_UNLOCKED)) {
					if((ret=FUNC14(chn,card->key))<0) goto exit;

					cnt = 0;
					sum = 0;
					sramex = FUNC6();
					while(cnt<12) {
						kval = ((u8*)card->key)[cnt];
						sramex->flash_id[chn][cnt] = kval;
						sum += kval;
						cnt++;
					}
					sum = (sum^-1)&0xff;
					sramex->flashID_chksum[chn] = (sum<<8)|sum;
					FUNC7(1);
					return ret;
				}
				card->mount_step = 1;

				cnt = 0;
				sum = 0;
				sramex = FUNC6();
				while(cnt<12) {
					sum += sramex->flash_id[chn][cnt];
					cnt++;
				}
				cnt = sramex->flashID_chksum[chn];
				FUNC7(0);

				sum = (sum^-1)&0xff;
				sum |= (sum<<8);
				if(cnt!=sum) {
					ret = CARD_ERROR_IOERROR;
					goto exit;
				}
			}
		}
	}
	if(card->mount_step==1) {
		card->mount_step = 2;
		if((ret=FUNC10(chn,1))<0) goto exit;
		FUNC3(chn,__card_exihandler);
		FUNC4(chn);

		FUNC0(card->workarea,0xA000);
	}

	if((ret=FUNC12(chn,(card->sector_size*(card->mount_step-2)),card->sector_size,card->workarea+((card->mount_step-2)<<13),__card_mountcallback))<0) goto exit;
	return ret;

exit:
	FUNC4(chn);
	FUNC9(chn,ret);

	return ret;
}