
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_CVAR_VARIABLEVALUE ;
 int syscall (int ,char const*) ;

float trap_Cvar_VariableValue( const char *var_name ) {
 int temp;
 temp = syscall( UI_CVAR_VARIABLEVALUE, var_name );
 return (*(float*)&temp);
}
