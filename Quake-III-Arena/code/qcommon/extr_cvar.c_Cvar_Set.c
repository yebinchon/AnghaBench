
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cvar_Set2 (char const*,char const*,int ) ;
 int qtrue ;

void Cvar_Set( const char *var_name, const char *value) {
 Cvar_Set2 (var_name, value, qtrue);
}
