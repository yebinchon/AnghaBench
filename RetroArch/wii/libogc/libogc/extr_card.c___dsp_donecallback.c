
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef scalar_t__ s32 ;
typedef int dsptask_t ;
struct TYPE_3__ {size_t cipher; size_t latency; scalar_t__ workarea; int dsp_task; } ;
typedef TYPE_1__ card_block ;


 scalar_t__ CARD_ERROR_IOERROR ;
 scalar_t__ CARD_ERROR_NOCARD ;
 int CARD_STATUS_UNLOCKED ;
 size_t EXI_CHANNEL_2 ;
 scalar_t__ EXI_Probe (size_t) ;
 int EXI_Unlock (size_t) ;
 size_t __card_dummylen () ;
 int __card_mountcallback (size_t,scalar_t__) ;
 scalar_t__ __card_readarrayunlock (size_t,size_t,int ,size_t,int) ;
 scalar_t__ __card_readstatus (size_t,int*) ;
 TYPE_1__* cardmap ;
 size_t exnor (size_t,size_t) ;
 int tmp_buffer ;

__attribute__((used)) static void __dsp_donecallback(dsptask_t *task)
{

 u8 status;
 s32 ret;
 u32 chn,len,key;
 u32 workarea,val;
 card_block *card = ((void*)0);
 chn = 0;
 while(chn<EXI_CHANNEL_2) {
  card = &cardmap[chn];
  if(&card->dsp_task==task) break;
  chn++;
 }
 if(chn>=EXI_CHANNEL_2) return;

 workarea = (u32)card->workarea;
 workarea = ((workarea+47)&~0x1f);
 key = ((u32*)workarea)[8];

 val = (key^card->cipher)&~0xffff;
 len = __card_dummylen();
 if(__card_readarrayunlock(chn,val,tmp_buffer,len,1)<0) {
  EXI_Unlock(chn);
  __card_mountcallback(chn,CARD_ERROR_NOCARD);
  return;
 }

 val = exnor(card->cipher,((len+card->latency+4)<<3)+1);
 {
  u32 a,b,c,r1,r2,r3;
  a = (val<<23);
  b = (val<<15);
  c = (val<<7);
  r1 = (val^c);
  r2 = (b^r1);
  r3 = ~(a^r2);
  r1 = (val|(r3>>31));
  card->cipher = r1;
 }

 val = ((key<<16)^card->cipher)&~0xffff;
 len = __card_dummylen();
 if(__card_readarrayunlock(chn,val,tmp_buffer,len,1)<0) {
  EXI_Unlock(chn);
  __card_mountcallback(chn,CARD_ERROR_NOCARD);
  return;
 }

 ret = __card_readstatus(chn,&status);
 if(EXI_Probe(chn)==0) {
  EXI_Unlock(chn);
  __card_mountcallback(chn,CARD_ERROR_NOCARD);
  return;
 }
 if(!ret && !(status&CARD_STATUS_UNLOCKED)) {
  EXI_Unlock(chn);
  ret = CARD_ERROR_IOERROR;
 }
 __card_mountcallback(chn,ret);
}
