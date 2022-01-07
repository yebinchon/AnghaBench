
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int TVSTAT; } ;
struct TYPE_3__ {scalar_t__ IsSSH2Running; } ;


 int SH2SendInterrupt (int ,int,int) ;
 int SSH2 ;
 int ScuSendHBlankIN () ;
 TYPE_2__* Vdp2Regs ;
 TYPE_1__ yabsys ;

void Vdp2HBlankIN(void) {
   Vdp2Regs->TVSTAT |= 0x0004;
   ScuSendHBlankIN();

   if (yabsys.IsSSH2Running)
      SH2SendInterrupt(SSH2, 0x41, 0x2);
}
