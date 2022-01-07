
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_CVAR_VARIABLE_INTEGER_VALUE ;
 int syscall (int ,char const*) ;

int trap_Cvar_VariableIntegerValue( const char *var_name ) {
 return syscall( G_CVAR_VARIABLE_INTEGER_VALUE, var_name );
}
