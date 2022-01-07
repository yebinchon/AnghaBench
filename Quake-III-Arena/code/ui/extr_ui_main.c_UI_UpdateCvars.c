
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vmCvar; } ;
typedef TYPE_1__ cvarTable_t ;


 TYPE_1__* cvarTable ;
 int cvarTableSize ;
 int trap_Cvar_Update (int ) ;

void UI_UpdateCvars( void ) {
 int i;
 cvarTable_t *cv;

 for ( i = 0, cv = cvarTable ; i < cvarTableSize ; i++, cv++ ) {
  trap_Cvar_Update( cv->vmCvar );
 }
}
