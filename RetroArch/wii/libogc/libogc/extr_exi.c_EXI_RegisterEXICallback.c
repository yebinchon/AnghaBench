
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_4__ {int * CallbackEXI; } ;
typedef TYPE_1__ exibus_priv ;
typedef int * EXICallback ;


 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_2 ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __exi_setinterrupts (size_t,TYPE_1__*) ;
 TYPE_1__* eximap ;

EXICallback EXI_RegisterEXICallback(s32 nChn,EXICallback exi_cb)
{
 u32 level;
 EXICallback old = ((void*)0);
 exibus_priv *exi = &eximap[nChn];
 _CPU_ISR_Disable(level);
 old = exi->CallbackEXI;
 exi->CallbackEXI = exi_cb;
 if(nChn==EXI_CHANNEL_2) __exi_setinterrupts(EXI_CHANNEL_0,&eximap[EXI_CHANNEL_0]);
 else __exi_setinterrupts(nChn,exi);
 _CPU_ISR_Restore(level);
 return old;
}
