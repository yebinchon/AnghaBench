
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NumC; int* ButtonNum; size_t* DeviceNum; } ;
typedef TYPE_1__ ButtConfig ;


 int * Joysticks ;
 int SDL_JoystickGetAxis (int ,int) ;
 scalar_t__ SDL_JoystickGetButton (int ,int) ;
 int SDL_JoystickGetHat (int ,int) ;

int DTestButtonJoy(ButtConfig *bc)
{
 int x;

 for(x=0;x<bc->NumC;x++)
 {
  if(bc->ButtonNum[x]&0x8000)
  {
 int pos;
        pos = SDL_JoystickGetAxis(Joysticks[bc->DeviceNum[x]], bc->ButtonNum[x]&16383);
        if ((bc->ButtonNum[x]&0x4000) && pos <= -16383)
  return(1);
        else if (!(bc->ButtonNum[x]&0x4000) && pos >= 16363)
  return(1);
  }
  else if(bc->ButtonNum[x]&0x2000)
  {
   if( SDL_JoystickGetHat(Joysticks[bc->DeviceNum[x]],(bc->ButtonNum[x]>>8)&0x1F) & (bc->ButtonNum[x]&0xFF))
    return(1);
  }
  else
   if(SDL_JoystickGetButton(Joysticks[bc->DeviceNum[x]], bc->ButtonNum[x] ))
    return(1);
 }
 return(0);
}
