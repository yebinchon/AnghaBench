
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {scalar_t__ mouseActive; int mouseInitialized; } ;


 int IN_ActivateDIMouse () ;
 int IN_ActivateWin32Mouse () ;
 TYPE_2__* in_mouse ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_1__ s_wmv ;

void IN_ActivateMouse( void )
{
 if (!s_wmv.mouseInitialized ) {
  return;
 }
 if ( !in_mouse->integer )
 {
  s_wmv.mouseActive = qfalse;
  return;
 }
 if ( s_wmv.mouseActive )
 {
  return;
 }

 s_wmv.mouseActive = qtrue;

 if ( in_mouse->integer != -1 ) {
  IN_ActivateDIMouse();
 }
 IN_ActivateWin32Mouse();
}
