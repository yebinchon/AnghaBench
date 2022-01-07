
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int var ;
struct TYPE_2__ {scalar_t__ value; } ;


 int MAX_TOKEN_CHARS ;
 int atoi (char*) ;
 TYPE_1__ cg_cameraOrbit ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;

__attribute__((used)) static void CG_StartOrbit_f( void ) {
 char var[MAX_TOKEN_CHARS];

 trap_Cvar_VariableStringBuffer( "developer", var, sizeof( var ) );
 if ( !atoi(var) ) {
  return;
 }
 if (cg_cameraOrbit.value != 0) {
  trap_Cvar_Set ("cg_cameraOrbit", "0");
  trap_Cvar_Set("cg_thirdPerson", "0");
 } else {
  trap_Cvar_Set("cg_cameraOrbit", "5");
  trap_Cvar_Set("cg_thirdPerson", "1");
  trap_Cvar_Set("cg_thirdPersonAngle", "0");
  trap_Cvar_Set("cg_thirdPersonRange", "100");
 }
}
