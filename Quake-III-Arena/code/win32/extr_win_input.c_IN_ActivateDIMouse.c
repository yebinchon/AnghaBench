
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int Com_Printf (char*) ;
 int Cvar_Set (char*,char*) ;
 scalar_t__ FAILED (int ) ;
 int IDirectInputDevice_Acquire (int ) ;
 int IN_InitDIMouse () ;
 int g_pMouse ;

void IN_ActivateDIMouse( void ) {
 HRESULT hr;

 if (!g_pMouse) {
  return;
 }


 hr = IDirectInputDevice_Acquire( g_pMouse );
 if (FAILED(hr)) {
  if ( !IN_InitDIMouse() ) {
   Com_Printf ("Falling back to Win32 mouse support...\n");
   Cvar_Set( "in_mouse", "-1" );
  }
 }
}
