
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_SERVERINFO ;
 int Com_Error (int ,char*,int) ;
 int Cvar_InfoString (int ) ;
 int ERR_DROP ;
 int Q_strncpyz (char*,int ,int) ;

void SV_GetServerinfo( char *buffer, int bufferSize ) {
 if ( bufferSize < 1 ) {
  Com_Error( ERR_DROP, "SV_GetServerinfo: bufferSize == %i", bufferSize );
 }
 Q_strncpyz( buffer, Cvar_InfoString( CVAR_SERVERINFO ), bufferSize );
}
