
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int sysMsgTime; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_11__ {int dwSize; int dwButtons; scalar_t__ dwPOV; int dwVpos; int dwUpos; int dwXpos; int dwRpos; int dwZpos; int dwYpos; int dwFlags; } ;
struct TYPE_9__ {int wNumButtons; int wNumAxes; int wCaps; } ;
struct TYPE_12__ {int oldbuttonstate; int oldpovstate; TYPE_3__ ji; TYPE_1__ jc; int id; int avail; } ;
struct TYPE_10__ {float value; } ;
typedef int DWORD ;


 int Com_Memset (TYPE_3__*,int ,int) ;
 int Com_Printf (char*,int,scalar_t__,float,float,float,float,int,int) ;
 int JOYCAPS_HASPOV ;
 scalar_t__ JOYERR_NOERROR ;
 scalar_t__ JOY_POVBACKWARD ;
 scalar_t__ JOY_POVCENTERED ;
 scalar_t__ JOY_POVFORWARD ;
 scalar_t__ JOY_POVLEFT ;
 scalar_t__ JOY_POVRIGHT ;
 int JOY_RETURNALL ;
 float JoyToF (int ) ;
 int JoyToI (int ) ;
 int K_JOY1 ;
 int SE_KEY ;
 int SE_MOUSE ;
 int Sys_QueEvent (int ,int ,int,int,int ,int *) ;
 TYPE_7__ g_wv ;
 TYPE_6__* in_debugJoystick ;
 TYPE_5__* in_joyBallScale ;
 TYPE_4__ joy ;
 int* joyDirectionKeys ;
 scalar_t__ joyGetPosEx (int ,TYPE_3__*) ;
 TYPE_2__* joy_threshold ;
 int qfalse ;
 int qtrue ;

void IN_JoyMove( void ) {
 float fAxisValue;
 int i;
 DWORD buttonstate, povstate;
 int x, y;


 if ( !joy.avail ) {
  return;
 }


 Com_Memset (&joy.ji, 0, sizeof(joy.ji));
 joy.ji.dwSize = sizeof(joy.ji);
 joy.ji.dwFlags = JOY_RETURNALL;

 if ( joyGetPosEx (joy.id, &joy.ji) != JOYERR_NOERROR ) {





  return;
 }

 if ( in_debugJoystick->integer ) {
  Com_Printf( "%8x %5i %5.2f %5.2f %5.2f %5.2f %6i %6i\n",
   joy.ji.dwButtons,
   joy.ji.dwPOV,
   JoyToF( joy.ji.dwXpos ), JoyToF( joy.ji.dwYpos ),
   JoyToF( joy.ji.dwZpos ), JoyToF( joy.ji.dwRpos ),
   JoyToI( joy.ji.dwUpos ), JoyToI( joy.ji.dwVpos ) );
 }



 buttonstate = joy.ji.dwButtons;
 for ( i=0 ; i < joy.jc.wNumButtons ; i++ ) {
  if ( (buttonstate & (1<<i)) && !(joy.oldbuttonstate & (1<<i)) ) {
   Sys_QueEvent( g_wv.sysMsgTime, SE_KEY, K_JOY1 + i, qtrue, 0, ((void*)0) );
  }
  if ( !(buttonstate & (1<<i)) && (joy.oldbuttonstate & (1<<i)) ) {
   Sys_QueEvent( g_wv.sysMsgTime, SE_KEY, K_JOY1 + i, qfalse, 0, ((void*)0) );
  }
 }
 joy.oldbuttonstate = buttonstate;

 povstate = 0;


 for (i = 0; i < joy.jc.wNumAxes && i < 4 ; i++) {

  fAxisValue = JoyToF( (&joy.ji.dwXpos)[i] );

  if ( fAxisValue < -joy_threshold->value ) {
   povstate |= (1<<(i*2));
  } else if ( fAxisValue > joy_threshold->value ) {
   povstate |= (1<<(i*2+1));
  }
 }


 if ( joy.jc.wCaps & JOYCAPS_HASPOV ) {
  if ( joy.ji.dwPOV != JOY_POVCENTERED ) {
   if (joy.ji.dwPOV == JOY_POVFORWARD)
    povstate |= 1<<12;
   if (joy.ji.dwPOV == JOY_POVBACKWARD)
    povstate |= 1<<13;
   if (joy.ji.dwPOV == JOY_POVRIGHT)
    povstate |= 1<<14;
   if (joy.ji.dwPOV == JOY_POVLEFT)
    povstate |= 1<<15;
  }
 }


 for (i=0 ; i < 16 ; i++) {
  if ( (povstate & (1<<i)) && !(joy.oldpovstate & (1<<i)) ) {
   Sys_QueEvent( g_wv.sysMsgTime, SE_KEY, joyDirectionKeys[i], qtrue, 0, ((void*)0) );
  }

  if ( !(povstate & (1<<i)) && (joy.oldpovstate & (1<<i)) ) {
   Sys_QueEvent( g_wv.sysMsgTime, SE_KEY, joyDirectionKeys[i], qfalse, 0, ((void*)0) );
  }
 }
 joy.oldpovstate = povstate;


 if ( joy.jc.wNumAxes >= 6 ) {
  x = JoyToI( joy.ji.dwUpos ) * in_joyBallScale->value;
  y = JoyToI( joy.ji.dwVpos ) * in_joyBallScale->value;
  if ( x || y ) {
   Sys_QueEvent( g_wv.sysMsgTime, SE_MOUSE, x, y, 0, ((void*)0) );
  }
 }
}
