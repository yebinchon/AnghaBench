
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ArenaServers_Cache () ;
 int ConfirmMenu_Cache () ;
 int Controls_Cache () ;
 int Demos_Cache () ;
 int DriverInfo_Cache () ;
 int GraphicsOptions_Cache () ;
 int InGame_Cache () ;
 int MainMenu_Cache () ;
 int PlayerModel_Cache () ;
 int PlayerSettings_Cache () ;
 int Preferences_Cache () ;
 int ServerInfo_Cache () ;
 int ServerOptions_Cache () ;
 int SpecifyServer_Cache () ;
 int StartServer_Cache () ;
 int TeamMain_Cache () ;
 int UI_AddBots_Cache () ;
 int UI_BotSelectMenu_Cache () ;
 int UI_CDKeyMenu_Cache () ;
 int UI_CinematicsMenu_Cache () ;
 int UI_DisplayOptionsMenu_Cache () ;
 int UI_ModsMenu_Cache () ;
 int UI_NetworkOptionsMenu_Cache () ;
 int UI_RemoveBots_Cache () ;
 int UI_SPLevelMenu_Cache () ;
 int UI_SPPostgameMenu_Cache () ;
 int UI_SPSkillMenu_Cache () ;
 int UI_SetupMenu_Cache () ;
 int UI_SoundOptionsMenu_Cache () ;

void UI_Cache_f( void ) {
 MainMenu_Cache();
 InGame_Cache();
 ConfirmMenu_Cache();
 PlayerModel_Cache();
 PlayerSettings_Cache();
 Controls_Cache();
 Demos_Cache();
 UI_CinematicsMenu_Cache();
 Preferences_Cache();
 ServerInfo_Cache();
 SpecifyServer_Cache();
 ArenaServers_Cache();
 StartServer_Cache();
 ServerOptions_Cache();
 DriverInfo_Cache();
 GraphicsOptions_Cache();
 UI_DisplayOptionsMenu_Cache();
 UI_SoundOptionsMenu_Cache();
 UI_NetworkOptionsMenu_Cache();
 UI_SPLevelMenu_Cache();
 UI_SPSkillMenu_Cache();
 UI_SPPostgameMenu_Cache();
 TeamMain_Cache();
 UI_AddBots_Cache();
 UI_RemoveBots_Cache();
 UI_SetupMenu_Cache();


 UI_BotSelectMenu_Cache();
 UI_CDKeyMenu_Cache();
 UI_ModsMenu_Cache();

}
