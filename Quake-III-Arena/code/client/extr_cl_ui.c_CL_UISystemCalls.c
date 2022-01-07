
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* PC_AddGlobalDefine ) (int) ;int (* PC_LoadSourceHandle ) (int) ;int (* PC_FreeSourceHandle ) (int) ;int (* PC_ReadTokenHandle ) (int,int) ;int (* PC_SourceFileAndLine ) (int,int,int) ;} ;
struct TYPE_3__ {int (* RegisterModel ) (int) ;int (* RegisterSkin ) (int) ;int (* RegisterShaderNoMip ) (int) ;int (* RemapShader ) (int,int,int) ;int (* RegisterFont ) (int,int,int) ;int (* LerpTag ) (int,int,int,int,int ,int) ;int (* ModelBounds ) (int,int,int) ;int (* DrawStretchPic ) (int ,int ,int ,int ,int ,int ,int ,int ,int) ;int (* SetColor ) (int) ;int (* RenderScene ) (int) ;int (* AddLightToScene ) (int,int ,int ,int ,int ) ;int (* AddPolyToScene ) (int,int,int,int) ;int (* AddRefEntityToScene ) (int) ;int (* ClearScene ) () ;} ;


 int CIN_DrawCinematic (int) ;
 int CIN_PlayCinematic (int,int,int,int,int,int) ;
 int CIN_RunCinematic (int) ;
 int CIN_SetExtents (int,int,int,int,int) ;
 int CIN_StopCinematic (int) ;
 int CLUI_GetCDKey (int,int) ;
 int CLUI_SetCDKey (int) ;
 int CL_CDKeyValidate (int,int) ;
 int CL_GetGlconfig (int) ;
 int Cbuf_ExecuteText (int,int) ;
 int Cmd_Argc () ;
 int Cmd_ArgvBuffer (int,int,int) ;
 int Com_DPrintf (char*) ;
 int Com_Error (int ,char*,int) ;
 int Com_Memcpy (int,int,int) ;
 int Com_Memset (int,int,int) ;
 int Com_Printf (char*,int) ;
 int Com_RealTime (int) ;
 int Cvar_Get (int,int,int) ;
 int Cvar_InfoStringBuffer (int,int,int) ;
 int Cvar_Register (int,int,int,int) ;
 int Cvar_Reset (int) ;
 int Cvar_Set (int,int) ;
 int Cvar_SetValue (int,int ) ;
 int Cvar_Update (int) ;
 int Cvar_VariableStringBuffer (int,int,int) ;
 int Cvar_VariableValue (int) ;
 int ERR_DROP ;
 int FS_FCloseFile (int) ;
 int FS_FOpenFileByMode (int,int,int) ;
 int FS_GetFileList (int,int,int,int) ;
 int FS_Read2 (int,int,int) ;
 int FS_Seek (int,int,int) ;
 int FS_Write (int,int,int) ;
 int FloatAsInt (int ) ;
 int GetClientState (int) ;
 int GetClipboardData (int,int) ;
 int GetConfigString (int,int,int) ;
 int Hunk_MemoryRemaining () ;
 int Key_ClearStates () ;
 int Key_GetBindingBuf (int,int,int) ;
 int Key_GetCatcher () ;
 int Key_GetOverstrikeMode () ;
 int Key_IsDown (int) ;
 int Key_KeynumToStringBuf (int,int,int) ;
 int Key_SetBinding (int,int) ;
 int Key_SetCatcher (int) ;
 int Key_SetOverstrikeMode (int) ;
 int LAN_AddServer (int,int,int) ;
 int LAN_ClearPing (int) ;
 int LAN_CompareServers (int,int,int,int,int) ;
 int LAN_GetPing (int,int,int,int) ;
 int LAN_GetPingInfo (int,int,int) ;
 int LAN_GetPingQueueCount () ;
 int LAN_GetServerAddressString (int,int,int,int) ;
 int LAN_GetServerCount (int) ;
 int LAN_GetServerInfo (int,int,int,int) ;
 int LAN_GetServerPing (int,int) ;
 int LAN_GetServerStatus (int,int,int) ;
 int LAN_LoadCachedServers () ;
 int LAN_MarkServerVisible (int,int,int) ;
 int LAN_RemoveServer (int,int) ;
 int LAN_ResetPings (int) ;
 int LAN_SaveServersToCache () ;
 int LAN_ServerIsVisible (int,int) ;
 int LAN_UpdateVisiblePings (int) ;
 int SCR_UpdateScreen () ;
 int S_RegisterSound (int,int) ;
 int S_StartBackgroundTrack (int,int) ;
 int S_StartLocalSound (int,int) ;
 int S_StopBackgroundTrack () ;
 int Sys_Milliseconds () ;
 int VMA (int) ;
 int VMF (int) ;
 int atan2 (int ,int ) ;
 TYPE_2__* botlib_export ;
 int ceil (int ) ;
 int cos (int ) ;
 int floor (int ) ;
 TYPE_1__ re ;
 int sin (int ) ;
 int sqrt (int ) ;
 scalar_t__ strncpy (int,int,int) ;
 int stub1 (int) ;
 int stub10 (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int stub11 (int,int,int) ;
 int stub12 (int,int,int,int,int ,int) ;
 int stub13 (int,int,int) ;
 int stub14 (int) ;
 int stub15 (int) ;
 int stub16 (int) ;
 int stub17 (int,int) ;
 int stub18 (int,int,int) ;
 int stub19 (int,int,int) ;
 int stub2 (int) ;
 int stub3 (int) ;
 int stub4 () ;
 int stub5 (int) ;
 int stub6 (int,int,int,int) ;
 int stub7 (int,int ,int ,int ,int ) ;
 int stub8 (int) ;
 int stub9 (int) ;

int CL_UISystemCalls( int *args ) {
 switch( args[0] ) {
 case 202:
  Com_Error( ERR_DROP, "%s", VMA(1) );
  return 0;

 case 153:
  Com_Printf( "%s", VMA(1) );
  return 0;

 case 159:
  return Sys_Milliseconds();

 case 209:
  Cvar_Register( VMA(1), VMA(2), VMA(3), args[4] );
  return 0;

 case 205:
  Cvar_Update( VMA(1) );
  return 0;

 case 207:
  Cvar_Set( VMA(1), VMA(2) );
  return 0;

 case 203:
  return FloatAsInt( Cvar_VariableValue( VMA(1) ) );

 case 204:
  Cvar_VariableStringBuffer( VMA(1), VMA(2), args[3] );
  return 0;

 case 206:
  Cvar_SetValue( VMA(1), VMF(2) );
  return 0;

 case 208:
  Cvar_Reset( VMA(1) );
  return 0;

 case 211:
  Cvar_Get( VMA(1), VMA(2), args[3] );
  return 0;

 case 210:
  Cvar_InfoStringBuffer( args[1], VMA(2), args[3] );
  return 0;

 case 223:
  return Cmd_Argc();

 case 222:
  Cmd_ArgvBuffer( args[1], VMA(2), args[3] );
  return 0;

 case 214:
  Cbuf_ExecuteText( args[1], VMA(2) );
  return 0;

 case 199:
  return FS_FOpenFileByMode( VMA(1), VMA(2), args[3] );

 case 197:
  FS_Read2( VMA(1), args[2], args[3] );
  return 0;

 case 195:
  FS_Write( VMA(1), args[2], args[3] );
  return 0;

 case 200:
  FS_FCloseFile( args[1] );
  return 0;

 case 198:
  return FS_GetFileList( VMA(1), VMA(2), VMA(3), args[4] );

 case 196:
  return FS_Seek( args[1], args[2], args[3] );

 case 144:
  return re.RegisterModel( VMA(1) );

 case 142:
  return re.RegisterSkin( VMA(1) );

 case 143:
  return re.RegisterShaderNoMip( VMA(1) );

 case 148:
  re.ClearScene();
  return 0;

 case 149:
  re.AddRefEntityToScene( VMA(1) );
  return 0;

 case 150:
  re.AddPolyToScene( args[1], args[2], VMA(3), 1 );
  return 0;

 case 151:
  re.AddLightToScene( VMA(1), VMF(2), VMF(3), VMF(4), VMF(5) );
  return 0;

 case 140:
  re.RenderScene( VMA(1) );
  return 0;

 case 139:
  re.SetColor( VMA(1) );
  return 0;

 case 147:
  re.DrawStretchPic( VMF(1), VMF(2), VMF(3), VMF(4), VMF(5), VMF(6), VMF(7), VMF(8), args[9] );
  return 0;

  case 146:
  re.ModelBounds( args[1], VMA(2), VMA(3) );
  return 0;

 case 129:
  SCR_UpdateScreen();
  return 0;

 case 213:
  re.LerpTag( VMA(1), args[2], args[3], args[4], VMF(5), VMA(6) );
  return 0;

 case 133:
  return S_RegisterSound( VMA(1), args[2] );

 case 131:
  S_StartLocalSound( args[1], args[2] );
  return 0;

 case 184:
  Key_KeynumToStringBuf( args[1], VMA(2), args[3] );
  return 0;

 case 188:
  Key_GetBindingBuf( args[1], VMA(2), args[3] );
  return 0;

 case 183:
  Key_SetBinding( args[1], VMA(2) );
  return 0;

 case 185:
  return Key_IsDown( args[1] );

 case 186:
  return Key_GetOverstrikeMode();

 case 181:
  Key_SetOverstrikeMode( args[1] );
  return 0;

 case 189:
  Key_ClearStates();
  return 0;

 case 187:
  return Key_GetCatcher();

 case 182:
  Key_SetCatcher( args[1] );
  return 0;

 case 193:
  GetClipboardData( VMA(1), args[2] );
  return 0;

 case 194:
  GetClientState( VMA(1) );
  return 0;

 case 191:
  CL_GetGlconfig( VMA(1) );
  return 0;

 case 192:
  return GetConfigString( args[1], VMA(2), args[3] );

 case 170:
  LAN_LoadCachedServers();
  return 0;

 case 166:
  LAN_SaveServersToCache();
  return 0;

 case 180:
  return LAN_AddServer(args[1], VMA(2), VMA(3));

 case 168:
  LAN_RemoveServer(args[1], VMA(2));
  return 0;

 case 175:
  return LAN_GetPingQueueCount();

 case 179:
  LAN_ClearPing( args[1] );
  return 0;

 case 177:
  LAN_GetPing( args[1], VMA(2), args[3], VMA(4) );
  return 0;

 case 176:
  LAN_GetPingInfo( args[1], VMA(2), args[3] );
  return 0;

 case 173:
  return LAN_GetServerCount(args[1]);

 case 174:
  LAN_GetServerAddressString( args[1], args[2], VMA(3), args[4] );
  return 0;

 case 172:
  LAN_GetServerInfo( args[1], args[2], VMA(3), args[4] );
  return 0;

 case 171:
  return LAN_GetServerPing( args[1], args[2] );

 case 169:
  LAN_MarkServerVisible( args[1], args[2], args[3] );
  return 0;

 case 165:
  return LAN_ServerIsVisible( args[1], args[2] );

 case 163:
  return LAN_UpdateVisiblePings( args[1] );

 case 167:
  LAN_ResetPings( args[1] );
  return 0;

 case 164:
  return LAN_GetServerStatus( VMA(1), VMA(2), args[3] );

 case 178:
  return LAN_CompareServers( args[1], args[2], args[3], args[4], args[5] );

 case 161:
  return Hunk_MemoryRemaining();

 case 190:
  CLUI_GetCDKey( VMA(1), args[2] );
  return 0;

 case 138:
  CLUI_SetCDKey( VMA(1) );
  return 0;

 case 137:
  return 0;

 case 145:
  re.RegisterFont( VMA(1), args[2], VMA(3));
  return 0;

 case 160:
  Com_Memset( VMA(1), args[2], args[3] );
  return 0;

 case 162:
  Com_Memcpy( VMA(1), VMA(2), args[3] );
  return 0;

 case 134:
  return (int)strncpy( VMA(1), VMA(2), args[3] );

 case 136:
  return FloatAsInt( sin( VMF(1) ) );

 case 212:
  return FloatAsInt( cos( VMF(1) ) );

 case 221:
  return FloatAsInt( atan2( VMF(1), VMF(2) ) );

 case 135:
  return FloatAsInt( sqrt( VMF(1) ) );

 case 201:
  return FloatAsInt( floor( VMF(1) ) );

 case 220:
  return FloatAsInt( ceil( VMF(1) ) );

 case 158:
  return botlib_export->PC_AddGlobalDefine( VMA(1) );
 case 156:
  return botlib_export->PC_LoadSourceHandle( VMA(1) );
 case 157:
  return botlib_export->PC_FreeSourceHandle( args[1] );
 case 155:
  return botlib_export->PC_ReadTokenHandle( args[1], VMA(2) );
 case 154:
  return botlib_export->PC_SourceFileAndLine( args[1], VMA(2), VMA(3) );

 case 130:
  S_StopBackgroundTrack();
  return 0;
 case 132:
  S_StartBackgroundTrack( VMA(1), VMA(2));
  return 0;

 case 152:
  return Com_RealTime( VMA(1) );

 case 218:
   Com_DPrintf("UI_CIN_PlayCinematic\n");
   return CIN_PlayCinematic(VMA(1), args[2], args[3], args[4], args[5], args[6]);

 case 215:
   return CIN_StopCinematic(args[1]);

 case 217:
   return CIN_RunCinematic(args[1]);

 case 219:
   CIN_DrawCinematic(args[1]);
   return 0;

 case 216:
   CIN_SetExtents(args[1], args[2], args[3], args[4], args[5]);
   return 0;

 case 141:
  re.RemapShader( VMA(1), VMA(2), VMA(3) );
  return 0;

 case 128:
  return CL_CDKeyValidate(VMA(1), VMA(2));



 default:
  Com_Error( ERR_DROP, "Bad UI system trap: %i", args[0] );

 }

 return 0;
}
