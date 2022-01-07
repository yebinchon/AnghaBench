
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cvarFlags; int defaultString; int cvarName; int vmCvar; } ;
typedef TYPE_1__ cvarTable_t ;


 TYPE_1__* cvarTable ;
 int cvarTableSize ;
 int trap_Cvar_Register (int ,int ,int ,int ) ;

void UI_RegisterCvars( void ) {
 int i;
 cvarTable_t *cv;

 for ( i = 0, cv = cvarTable ; i < cvarTableSize ; i++, cv++ ) {
  trap_Cvar_Register( cv->vmCvar, cv->cvarName, cv->defaultString, cv->cvarFlags );
 }
}
