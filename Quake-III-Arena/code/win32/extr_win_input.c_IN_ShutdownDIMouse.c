
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDirectInputDevice_Release (int *) ;
 int IDirectInput_Release (int *) ;
 int * g_pMouse ;
 int * g_pdi ;

void IN_ShutdownDIMouse( void ) {
    if (g_pMouse) {
  IDirectInputDevice_Release(g_pMouse);
  g_pMouse = ((void*)0);
 }

    if (g_pdi) {
  IDirectInput_Release(g_pdi);
  g_pdi = ((void*)0);
 }
}
