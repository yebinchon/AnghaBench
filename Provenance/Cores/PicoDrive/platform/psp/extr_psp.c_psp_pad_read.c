
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int Buttons; int Lx; int Ly; } ;
typedef TYPE_1__ SceCtrlData ;


 int ANALOG_DEADZONE ;
 unsigned int PBTN_NUB_DOWN ;
 unsigned int PBTN_NUB_LEFT ;
 unsigned int PBTN_NUB_RIGHT ;
 unsigned int PBTN_NUB_UP ;
 int sceCtrlPeekBufferPositive (TYPE_1__*,int) ;
 int sceCtrlReadBufferPositive (TYPE_1__*,int) ;

unsigned int psp_pad_read(int blocking)
{
 unsigned int buttons;
 SceCtrlData pad;
 if (blocking)
      sceCtrlReadBufferPositive(&pad, 1);
 else sceCtrlPeekBufferPositive(&pad, 1);
 buttons = pad.Buttons;


 buttons &= ~(PBTN_NUB_UP|PBTN_NUB_DOWN|PBTN_NUB_LEFT|PBTN_NUB_RIGHT);
 if (pad.Lx < 128 - ANALOG_DEADZONE) buttons |= PBTN_NUB_LEFT;
 if (pad.Lx > 128 + ANALOG_DEADZONE) buttons |= PBTN_NUB_RIGHT;
 if (pad.Ly < 128 - ANALOG_DEADZONE) buttons |= PBTN_NUB_UP;
 if (pad.Ly > 128 + ANALOG_DEADZONE) buttons |= PBTN_NUB_DOWN;

 return buttons;
}
