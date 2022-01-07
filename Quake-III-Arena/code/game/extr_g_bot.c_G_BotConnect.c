
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int userinfo ;
typedef int qboolean ;
struct TYPE_3__ {int team; int skill; int characterfile; } ;
typedef TYPE_1__ bot_settings_t ;


 int BotAISetupClient (int,TYPE_1__*,int ) ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int Q_strncpyz (int ,int ,int) ;
 int atof (int ) ;
 int qfalse ;
 int qtrue ;
 int trap_DropClient (int,char*) ;
 int trap_GetUserinfo (int,char*,int) ;

qboolean G_BotConnect( int clientNum, qboolean restart ) {
 bot_settings_t settings;
 char userinfo[MAX_INFO_STRING];

 trap_GetUserinfo( clientNum, userinfo, sizeof(userinfo) );

 Q_strncpyz( settings.characterfile, Info_ValueForKey( userinfo, "characterfile" ), sizeof(settings.characterfile) );
 settings.skill = atof( Info_ValueForKey( userinfo, "skill" ) );
 Q_strncpyz( settings.team, Info_ValueForKey( userinfo, "team" ), sizeof(settings.team) );

 if (!BotAISetupClient( clientNum, &settings, restart )) {
  trap_DropClient( clientNum, "BotAISetupClient failed" );
  return qfalse;
 }

 return qtrue;
}
