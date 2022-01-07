
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int IN_DeactivateMouse () ;
 int in_appactive ;

void IN_Activate (qboolean active) {
 in_appactive = active;

 if ( !active )
 {
  IN_DeactivateMouse();
 }
}
