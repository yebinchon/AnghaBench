
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NumC; scalar_t__* ButtType; size_t* ButtonNum; } ;
typedef TYPE_1__ ButtConfig ;


 scalar_t__ BUTTC_JOYSTICK ;
 scalar_t__ BUTTC_KEYBOARD ;
 scalar_t__ DTestButtonJoy (TYPE_1__*) ;
 scalar_t__* KeyState ;

int DTestButton(ButtConfig *bc)
{
 int x;

 for(x=0;x<bc->NumC;x++)
 {
  if(bc->ButtType[x]==BUTTC_KEYBOARD)
  {
   if(KeyState[bc->ButtonNum[x]])
    return(1);
  }
  else if(bc->ButtType[x]==BUTTC_JOYSTICK)
  {
   if(DTestButtonJoy(bc))
    return(1);
  }
 }
 return(0);
}
