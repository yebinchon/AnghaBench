
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {TYPE_1__* activemenu; } ;
struct TYPE_3__ {int fullscreen; } ;


 int KEYCATCH_UI ;
 int qfalse ;
 int trap_Key_GetCatcher () ;
 TYPE_2__ uis ;

qboolean UI_IsFullscreen( void ) {
 if ( uis.activemenu && ( trap_Key_GetCatcher() & KEYCATCH_UI ) ) {
  return uis.activemenu->fullscreen;
 }

 return qfalse;
}
