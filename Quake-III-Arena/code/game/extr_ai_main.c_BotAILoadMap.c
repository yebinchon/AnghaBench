
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int string; } ;
typedef TYPE_1__ vmCvar_t ;
struct TYPE_6__ {int setupcount; scalar_t__ inuse; } ;


 int BotResetState (TYPE_3__*) ;
 int BotSetupDeathmatchAI () ;
 int CVAR_ROM ;
 int CVAR_SERVERINFO ;
 int MAX_CLIENTS ;
 TYPE_3__** botstates ;
 int qtrue ;
 int trap_BotLibLoadMap (int ) ;
 int trap_Cvar_Register (TYPE_1__*,char*,char*,int) ;

int BotAILoadMap( int restart ) {
 int i;
 vmCvar_t mapname;

 if (!restart) {
  trap_Cvar_Register( &mapname, "mapname", "", CVAR_SERVERINFO | CVAR_ROM );
  trap_BotLibLoadMap( mapname.string );
 }

 for (i = 0; i < MAX_CLIENTS; i++) {
  if (botstates[i] && botstates[i]->inuse) {
   BotResetState( botstates[i] );
   botstates[i]->setupcount = 4;
  }
 }

 BotSetupDeathmatchAI();

 return qtrue;
}
