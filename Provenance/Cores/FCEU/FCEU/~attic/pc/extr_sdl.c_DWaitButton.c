
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8 ;
typedef int int32 ;
struct TYPE_16__ {size_t* DeviceNum; int* ButtonNum; void** ButtType; } ;
struct TYPE_14__ {size_t which; size_t axis; int value; } ;
struct TYPE_13__ {int value; size_t which; int hat; } ;
struct TYPE_12__ {size_t which; int button; } ;
struct TYPE_10__ {int sym; } ;
struct TYPE_11__ {TYPE_1__ keysym; } ;
struct TYPE_15__ {int type; TYPE_5__ jaxis; TYPE_4__ jhat; TYPE_3__ jbutton; TYPE_2__ key; } ;
typedef TYPE_6__ SDL_Event ;
typedef TYPE_7__ ButtConfig ;


 void* BUTTC_JOYSTICK ;
 void* BUTTC_KEYBOARD ;
 int SDL_HAT_CENTERED ;




 int SDL_WM_SetCaption (int const*,int ) ;
 scalar_t__ SDL_WaitEvent (TYPE_6__*) ;
 int abs (int) ;
 int puts (int const*) ;

int DWaitButton(const uint8 *text, ButtConfig *bc, int wb)
{
 SDL_Event event;
 static int32 LastAx[64][64];
 int x,y;

 SDL_WM_SetCaption(text,0);

 puts(text);

 for(x=0;x<64;x++)
  for(y=0;y<64;y++)
   LastAx[x][y]=0x100000;

 while(SDL_WaitEvent(&event))
 {
  switch(event.type)
  {
   case 128:bc->ButtType[wb]=BUTTC_KEYBOARD;
      bc->DeviceNum[wb]=0;
      bc->ButtonNum[wb]=event.key.keysym.sym;
      return(1);
   case 130:bc->ButtType[wb]=BUTTC_JOYSTICK;
     bc->DeviceNum[wb]=event.jbutton.which;
     bc->ButtonNum[wb]=event.jbutton.button;
     return(1);
   case 129:if(event.jhat.value != SDL_HAT_CENTERED)
    {
     bc->ButtType[wb]=BUTTC_JOYSTICK;
     bc->DeviceNum[wb]=event.jhat.which;
     bc->ButtonNum[wb]=0x2000|((event.jhat.hat&0x1F)<<8)|event.jhat.value;
     return(1);
    }
    break;
   case 131:
 if(LastAx[event.jaxis.which][event.jaxis.axis]==0x100000)
 {
  if(abs(event.jaxis.value)<1000)
    LastAx[event.jaxis.which][event.jaxis.axis]=event.jaxis.value;
 }
 else
 {
  if(abs(LastAx[event.jaxis.which][event.jaxis.axis]-event.jaxis.value)>=8192)
  {
   bc->ButtType[wb]=BUTTC_JOYSTICK;
   bc->DeviceNum[wb]=event.jaxis.which;
   bc->ButtonNum[wb]=0x8000|(event.jaxis.axis)|((event.jaxis.value<0)?0x4000:0);
   return(1);
  }
 }
 break;
  }
 }

 return(0);
}
