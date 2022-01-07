
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int var ;
struct TYPE_4__ {int flags; struct TYPE_4__* next; scalar_t__ resetString; scalar_t__ name; scalar_t__ latchedString; scalar_t__ string; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_INIT ;
 int CVAR_NORESTART ;
 int CVAR_ROM ;
 int CVAR_USER_CREATED ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int Cvar_Set (scalar_t__,scalar_t__) ;
 int Z_Free (scalar_t__) ;
 TYPE_1__* cvar_vars ;

void Cvar_Restart_f( void ) {
 cvar_t *var;
 cvar_t **prev;

 prev = &cvar_vars;
 while ( 1 ) {
  var = *prev;
  if ( !var ) {
   break;
  }



  if ( var->flags & ( CVAR_ROM | CVAR_INIT | CVAR_NORESTART ) ) {
   prev = &var->next;
   continue;
  }


  if ( var->flags & CVAR_USER_CREATED ) {
   *prev = var->next;
   if ( var->name ) {
    Z_Free( var->name );
   }
   if ( var->string ) {
    Z_Free( var->string );
   }
   if ( var->latchedString ) {
    Z_Free( var->latchedString );
   }
   if ( var->resetString ) {
    Z_Free( var->resetString );
   }


   Com_Memset( var, 0, sizeof( var ) );
   continue;
  }

  Cvar_Set( var->name, var->resetString );

  prev = &var->next;
 }
}
