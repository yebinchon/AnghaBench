
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_CVAR_CREATE ;
 int syscall (int ,char const*,char const*,int) ;

void trap_Cvar_Create( const char *var_name, const char *var_value, int flags ) {
 syscall( UI_CVAR_CREATE, var_name, var_value, flags );
}
