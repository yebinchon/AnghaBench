
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int keyCatchers; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {scalar_t__ displayFrac; scalar_t__ finalFrac; } ;


 int Con_ClearNotify () ;
 int Field_Clear (int *) ;
 int KEYCATCH_CONSOLE ;
 TYPE_3__ cls ;
 TYPE_2__* com_cl_running ;
 TYPE_1__ con ;
 int g_consoleField ;

void Con_Close( void ) {
 if ( !com_cl_running->integer ) {
  return;
 }
 Field_Clear( &g_consoleField );
 Con_ClearNotify ();
 cls.keyCatchers &= ~KEYCATCH_CONSOLE;
 con.finalFrac = 0;
 con.displayFrac = 0;
}
