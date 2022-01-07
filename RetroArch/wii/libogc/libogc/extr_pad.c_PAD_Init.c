
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef int keyinput ;
struct TYPE_3__ {int chan; } ;


 int PAD_CHANMAX ;
 int PAD_PRODPADS ;
 int PAD_Reset (int) ;
 int PAD_SetSpec (scalar_t__) ;
 int SI_RefreshSamplingRate () ;
 int SYS_RegisterResetFunc (int *) ;
 int _SHIFTL (int ,int,int) ;
 int* __pad_cmdprobedevice ;
 int __pad_initialized ;
 TYPE_1__* __pad_keys ;
 int __pad_recalibratebits ;
 scalar_t__ __pad_spec ;
 int memset (TYPE_1__*,int ,int) ;
 int pad_resetinfo ;

u32 PAD_Init()
{
 u32 chan;
 u16 prodpads = PAD_PRODPADS;
 if(__pad_initialized) return 1;

 if(__pad_spec) PAD_SetSpec(__pad_spec);

 memset(__pad_keys,0,sizeof(keyinput)*PAD_CHANMAX);

 __pad_recalibratebits = 0xf0000000;

 chan = 0;
 while(chan<4) {
  __pad_keys[chan].chan = -1;
  __pad_cmdprobedevice[chan] = 0x4d000000|(chan<<22)|_SHIFTL(prodpads,8,14);
  chan++;
 }

 SI_RefreshSamplingRate();
 SYS_RegisterResetFunc(&pad_resetinfo);

 __pad_initialized = 1;
 return PAD_Reset(0xf0000000);
}
