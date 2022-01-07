
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mouseActive; int mouseInitialized; } ;


 int IN_DeactivateDIMouse () ;
 int IN_DeactivateWin32Mouse () ;
 scalar_t__ qfalse ;
 TYPE_1__ s_wmv ;

void IN_DeactivateMouse( void ) {
 if (!s_wmv.mouseInitialized ) {
  return;
 }
 if (!s_wmv.mouseActive ) {
  return;
 }
 s_wmv.mouseActive = qfalse;

 IN_DeactivateDIMouse();
 IN_DeactivateWin32Mouse();
}
