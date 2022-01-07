
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwOfs; int dwData; int dwTimeStamp; } ;
struct TYPE_5__ {int lX; int lY; } ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ DIMOUSESTATE ;
typedef TYPE_2__ DIDEVICEOBJECTDATA ;


 scalar_t__ DIERR_INPUTLOST ;
 scalar_t__ DIERR_NOTACQUIRED ;





 scalar_t__ FAILED (scalar_t__) ;
 int IDirectInputDevice_Acquire (int ) ;
 scalar_t__ IDirectInputDevice_GetDeviceData (int ,int,TYPE_2__*,int*,int ) ;
 scalar_t__ IDirectInputDevice_GetDeviceState (int ,int,TYPE_1__*) ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int K_MOUSE3 ;
 int K_MOUSE4 ;
 int K_MWHEELDOWN ;
 int K_MWHEELUP ;
 int SE_KEY ;
 int Sys_QueEvent (int ,int ,int ,int ,int ,int *) ;
 int g_pMouse ;
 int qfalse ;
 int qtrue ;

void IN_DIMouse( int *mx, int *my ) {
 DIDEVICEOBJECTDATA od;
 DIMOUSESTATE state;
 DWORD dwElements;
 HRESULT hr;
  int value;
 static float oldSysTime;

 if ( !g_pMouse ) {
  return;
 }


 for (;;)
 {
  dwElements = 1;

  hr = IDirectInputDevice_GetDeviceData(g_pMouse,
    sizeof(DIDEVICEOBJECTDATA), &od, &dwElements, 0);
  if ((hr == DIERR_INPUTLOST) || (hr == DIERR_NOTACQUIRED)) {
   IDirectInputDevice_Acquire(g_pMouse);
   return;
  }


  if ( FAILED(hr) ) {
   break;
  }

  if ( dwElements == 0 ) {
   break;
  }

  switch (od.dwOfs) {
  case 132:
   if (od.dwData & 0x80)
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MOUSE1, qtrue, 0, ((void*)0) );
   else
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MOUSE1, qfalse, 0, ((void*)0) );
   break;

  case 131:
   if (od.dwData & 0x80)
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MOUSE2, qtrue, 0, ((void*)0) );
   else
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MOUSE2, qfalse, 0, ((void*)0) );
   break;

  case 130:
   if (od.dwData & 0x80)
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MOUSE3, qtrue, 0, ((void*)0) );
   else
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MOUSE3, qfalse, 0, ((void*)0) );
   break;

  case 129:
   if (od.dwData & 0x80)
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MOUSE4, qtrue, 0, ((void*)0) );
   else
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MOUSE4, qfalse, 0, ((void*)0) );
   break;

  case 128:
   value = od.dwData;
   if (value == 0) {

   } else if (value < 0) {
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MWHEELDOWN, qtrue, 0, ((void*)0) );
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MWHEELDOWN, qfalse, 0, ((void*)0) );
   } else {
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MWHEELUP, qtrue, 0, ((void*)0) );
    Sys_QueEvent( od.dwTimeStamp, SE_KEY, K_MWHEELUP, qfalse, 0, ((void*)0) );
   }
   break;
  }
 }



 hr = IDirectInputDevice_GetDeviceState(g_pMouse,
   sizeof(DIDEVICEOBJECTDATA), &state);
 if ( FAILED(hr) ) {
  *mx = *my = 0;
  return;
 }
 *mx = state.lX;
 *my = state.lY;
}
