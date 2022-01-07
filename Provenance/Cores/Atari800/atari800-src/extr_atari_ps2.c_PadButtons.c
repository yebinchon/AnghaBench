
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padButtonStatus {int btns; } ;


 int PAD_PORT ;
 int PAD_SLOT ;
 int PAD_STATE_DISCONN ;
 int PAD_STATE_FINDCTP1 ;
 int PAD_STATE_STABLE ;
 int padGetState (int ,int ) ;
 int padRead (int ,int ,struct padButtonStatus*) ;

__attribute__((used)) static int PadButtons(void)
{
 struct padButtonStatus buttons;
 for (;;) {
  int ret = padGetState(PAD_PORT, PAD_SLOT);
  if (ret == PAD_STATE_STABLE || ret == PAD_STATE_FINDCTP1)
   break;
  if (ret == PAD_STATE_DISCONN)
   return 0;
 }
 padRead(PAD_PORT, PAD_SLOT, &buttons);
 return ~buttons.btns;
}
