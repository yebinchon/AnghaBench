
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDirectInputDevice_Unacquire (int ) ;
 int g_pMouse ;

void IN_DeactivateDIMouse( void ) {
 if (!g_pMouse) {
  return;
 }
 IDirectInputDevice_Unacquire( g_pMouse );
}
