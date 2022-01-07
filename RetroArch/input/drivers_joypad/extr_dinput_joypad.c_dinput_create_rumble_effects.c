
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cAxes; int cbTypeSpecificParams; int dwFlags; int dwSize; int * rglDirection; int * rgdwAxes; TYPE_2__* lpvTypeSpecificParams; TYPE_1__* lpEnvelope; scalar_t__ dwStartDelay; scalar_t__ dwGain; int dwDuration; scalar_t__ dwTriggerRepeatInterval; int dwTriggerButton; } ;
struct dinput_joypad_data {int * rumble_iface; TYPE_3__ rumble_props; int joypad; } ;
struct TYPE_5__ {scalar_t__ lMagnitude; } ;
struct TYPE_4__ {int dwSize; int dwAttackLevel; int dwAttackTime; int dwFadeTime; scalar_t__ dwFadeLevel; } ;
typedef int LONG ;
typedef int DWORD ;
typedef TYPE_1__ DIENVELOPE ;
typedef int DIEFFECT ;
typedef TYPE_2__ DICONSTANTFORCE ;


 int DIEB_NOTRIGGER ;
 int DIEFF_CARTESIAN ;
 int DIEFF_OBJECTOFFSETS ;
 int DIJOFS_X ;
 int DIJOFS_Y ;
 scalar_t__ DI_OK ;
 int ******** GUID_ConstantForce ;
 scalar_t__ IDirectInputDevice8_CreateEffect (int ,int *********,TYPE_3__*,int *,int *) ;
 int INFINITE ;
 int RARCH_WARN (char*) ;

__attribute__((used)) static void dinput_create_rumble_effects(struct dinput_joypad_data *pad)
{
   DIENVELOPE dienv;
   DICONSTANTFORCE dicf;
   LONG direction = 0;
   DWORD axis = DIJOFS_X;

   dicf.lMagnitude = 0;

   dienv.dwSize = sizeof(DIENVELOPE);
   dienv.dwAttackLevel = 5000;
   dienv.dwAttackTime = 250000;
   dienv.dwFadeLevel = 0;
   dienv.dwFadeTime = 250000;

   pad->rumble_props.cAxes = 1;
   pad->rumble_props.dwTriggerButton = DIEB_NOTRIGGER;
   pad->rumble_props.dwTriggerRepeatInterval = 0;
   pad->rumble_props.cbTypeSpecificParams = sizeof(DICONSTANTFORCE);
   pad->rumble_props.dwDuration = INFINITE;
   pad->rumble_props.dwFlags = DIEFF_CARTESIAN |
      DIEFF_OBJECTOFFSETS;
   pad->rumble_props.dwGain = 0;
   pad->rumble_props.dwSize = sizeof(DIEFFECT);
   pad->rumble_props.dwStartDelay = 0;
   pad->rumble_props.lpEnvelope = &dienv;
   pad->rumble_props.lpvTypeSpecificParams = &dicf;
   pad->rumble_props.rgdwAxes = &axis;
   pad->rumble_props.rglDirection = &direction;






   if (IDirectInputDevice8_CreateEffect(pad->joypad, &GUID_ConstantForce,
         &pad->rumble_props, &pad->rumble_iface[0], ((void*)0)) != DI_OK)
      RARCH_WARN("[DINPUT]: Strong rumble unavailable.\n");


   axis = DIJOFS_Y;






   if (IDirectInputDevice8_CreateEffect(pad->joypad, &GUID_ConstantForce,
         &pad->rumble_props, &pad->rumble_iface[1], ((void*)0)) != DI_OK)
      RARCH_WARN("[DINPUT]: Weak rumble unavailable.\n");

}
