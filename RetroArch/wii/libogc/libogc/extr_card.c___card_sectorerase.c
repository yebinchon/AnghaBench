
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
typedef int cardcallback ;
struct TYPE_3__ {int sector_size; int* cmd; int cmd_len; int cmd_mode; int cmd_retries; int * card_exi_cb; } ;
typedef TYPE_1__ card_block ;


 size_t CARD_ERROR_FATAL_ERROR ;
 size_t CARD_ERROR_NOCARD ;
 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int EXI_Deselect (size_t) ;
 scalar_t__ EXI_ImmEx (size_t,int*,int,int ) ;
 int EXI_Unlock (size_t) ;
 int EXI_WRITE ;
 size_t __card_start (size_t,int *,int ) ;
 TYPE_1__* cardmap ;

__attribute__((used)) static s32 __card_sectorerase(s32 chn,u32 sector,cardcallback callback)
{
 s32 ret;
 card_block *card = ((void*)0);
 if(chn<EXI_CHANNEL_0 || chn>= EXI_CHANNEL_2) return CARD_ERROR_FATAL_ERROR;
 card = &cardmap[chn];

 if(sector%card->sector_size) return CARD_ERROR_FATAL_ERROR;

 card->cmd[0] = 0xf1;
 card->cmd[1] = (sector>>17)&0x7f;
 card->cmd[2] = (sector>>9)&0xff;
 card->cmd_len = 3;
 card->cmd_mode = -1;
 card->cmd_retries = 3;

 ret = __card_start(chn,((void*)0),callback);
 if(ret<0) return ret;

 if(EXI_ImmEx(chn,card->cmd,card->cmd_len,EXI_WRITE)==0) {
  card->card_exi_cb = ((void*)0);
  return CARD_ERROR_NOCARD;
 }

 EXI_Deselect(chn);
 EXI_Unlock(chn);
 return ret;
}
