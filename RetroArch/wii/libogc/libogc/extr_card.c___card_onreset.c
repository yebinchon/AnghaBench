
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int CARD_SLOTA ;
 int CARD_SLOTB ;
 int CARD_Unmount (int ) ;
 scalar_t__ FALSE ;

__attribute__((used)) static s32 __card_onreset(s32 final)
{
 if(final==FALSE) {
  if(CARD_Unmount(CARD_SLOTA)==-1) return 0;
  if(CARD_Unmount(CARD_SLOTB)==-1) return 0;
 }
 return 1;
}
