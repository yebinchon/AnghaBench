
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int string; } ;
typedef TYPE_1__ cvar_t ;


 TYPE_1__* Cvar_FindVar (char const*) ;
 int Q_strncpyz (char*,int ,int) ;

void Cvar_VariableStringBuffer( const char *var_name, char *buffer, int bufsize ) {
 cvar_t *var;

 var = Cvar_FindVar (var_name);
 if (!var) {
  *buffer = 0;
 }
 else {
  Q_strncpyz( buffer, var->string, bufsize );
 }
}
