
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int modificationCount; int * handle; } ;
typedef TYPE_1__ vmCvar_t ;
typedef int cvar_t ;


 int * Cvar_Get (char const*,char const*,int) ;
 int Cvar_Update (TYPE_1__*) ;
 int cvar_indexes ;

void Cvar_Register( vmCvar_t *vmCvar, const char *varName, const char *defaultValue, int flags ) {
 cvar_t *cv;

 cv = Cvar_Get( varName, defaultValue, flags );
 if ( !vmCvar ) {
  return;
 }
 vmCvar->handle = cv - cvar_indexes;
 vmCvar->modificationCount = -1;
 Cvar_Update( vmCvar );
}
