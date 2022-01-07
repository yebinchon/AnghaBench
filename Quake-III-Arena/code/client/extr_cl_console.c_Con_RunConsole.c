
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int keyCatchers; double realFrametime; } ;
struct TYPE_5__ {double finalFrac; double displayFrac; } ;
struct TYPE_4__ {double value; } ;


 int KEYCATCH_CONSOLE ;
 TYPE_3__ cls ;
 TYPE_2__ con ;
 TYPE_1__* con_conspeed ;

void Con_RunConsole (void) {

 if ( cls.keyCatchers & KEYCATCH_CONSOLE )
  con.finalFrac = 0.5;
 else
  con.finalFrac = 0;


 if (con.finalFrac < con.displayFrac)
 {
  con.displayFrac -= con_conspeed->value*cls.realFrametime*0.001;
  if (con.finalFrac > con.displayFrac)
   con.displayFrac = con.finalFrac;

 }
 else if (con.finalFrac > con.displayFrac)
 {
  con.displayFrac += con_conspeed->value*cls.realFrametime*0.001;
  if (con.finalFrac < con.displayFrac)
   con.displayFrac = con.finalFrac;
 }

}
