
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int modelskin; } ;


 TYPE_1__ s_playermodel ;
 int trap_Cvar_Set (char*,int ) ;

__attribute__((used)) static void PlayerModel_SaveChanges( void )
{
 trap_Cvar_Set( "model", s_playermodel.modelskin );
 trap_Cvar_Set( "headmodel", s_playermodel.modelskin );
 trap_Cvar_Set( "team_model", s_playermodel.modelskin );
 trap_Cvar_Set( "team_headmodel", s_playermodel.modelskin );
}
