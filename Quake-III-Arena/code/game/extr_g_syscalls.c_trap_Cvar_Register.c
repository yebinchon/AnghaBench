
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmCvar_t ;


 int G_CVAR_REGISTER ;
 int syscall (int ,int *,char const*,char const*,int) ;

void trap_Cvar_Register( vmCvar_t *cvar, const char *var_name, const char *value, int flags ) {
 syscall( G_CVAR_REGISTER, cvar, var_name, value, flags );
}
