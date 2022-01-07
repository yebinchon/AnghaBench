
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; struct TYPE_3__* next; } ;
typedef TYPE_1__ cvar_t ;


 TYPE_1__* cvar_vars ;

void Cvar_CommandCompletion( void(*callback)(const char *s) ) {
 cvar_t *cvar;

 for ( cvar = cvar_vars ; cvar ; cvar = cvar->next ) {
  callback( cvar->name );
 }
}
