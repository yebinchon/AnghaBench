
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int Com_sprintf (char*,int,char*,float) ;
 int Cvar_Set (char const*,char*) ;

void Cvar_SetValue( const char *var_name, float value) {
 char val[32];

 if ( value == (int)value ) {
  Com_sprintf (val, sizeof(val), "%i",(int)value);
 } else {
  Com_sprintf (val, sizeof(val), "%f",value);
 }
 Cvar_Set (var_name, val);
}
