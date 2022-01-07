
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ poll; } ;
struct TYPE_3__ {int chan; } ;


 int IRQMASK (int ) ;
 int IRQ_PI_SI ;
 int IRQ_Request (int ,int ,int *) ;
 int SI_GetType (int) ;
 int SI_SetSamplingRate (int ) ;
 int SYS_CreateAlarm (int *) ;
 int __UnmaskIrq (int ) ;
 int __si_interrupthandler ;
 int* _siReg ;
 int * si_alarm ;
 TYPE_2__ sicntrl ;
 TYPE_1__* sipacket ;

void __si_init()
{
 u32 i;
 for(i=0;i<4;i++) {
  sipacket[i].chan = -1;
  SYS_CreateAlarm(&si_alarm[i]);
 }
 sicntrl.poll = 0;

 SI_SetSamplingRate(0);
 while(_siReg[13]&0x0001);
 _siReg[13] = 0x80000000;

 _siReg[15] &= ~0x80000000;

 IRQ_Request(IRQ_PI_SI,__si_interrupthandler,((void*)0));
 __UnmaskIrq(IRQMASK(IRQ_PI_SI));

 SI_GetType(0);
 SI_GetType(1);
 SI_GetType(2);
 SI_GetType(3);
}
