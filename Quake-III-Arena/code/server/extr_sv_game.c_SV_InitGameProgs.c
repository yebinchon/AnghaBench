
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int integer; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_LATCH ;
 int Com_Error (int ,char*) ;
 TYPE_1__* Cvar_Get (char*,char*,int ) ;
 int Cvar_VariableValue (char*) ;
 int ERR_FATAL ;
 int SV_GameSystemCalls ;
 int SV_InitGameVM (int ) ;
 int VM_Create (char*,int ,int ) ;
 int gvm ;
 int qfalse ;

void SV_InitGameProgs( void ) {
 cvar_t *var;

 extern int bot_enable;

 var = Cvar_Get( "bot_enable", "1", CVAR_LATCH );
 if ( var ) {
  bot_enable = var->integer;
 }
 else {
  bot_enable = 0;
 }


 gvm = VM_Create( "qagame", SV_GameSystemCalls, Cvar_VariableValue( "vm_game" ) );
 if ( !gvm ) {
  Com_Error( ERR_FATAL, "VM_Create on game failed" );
 }

 SV_InitGameVM( qfalse );
}
