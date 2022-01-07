
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int Cvar_VariableString (char*) ;
 int MOD_ALT ;
 int Q_stricmp (int ,char*) ;
 int RegisterHotKey (int ,int ,int ,int ) ;
 int SPI_SCREENSAVERRUNNING ;
 int SystemParametersInfo (int ,int,int *,int ) ;
 int VK_TAB ;
 scalar_t__ qtrue ;
 scalar_t__ s_alttab_disabled ;

__attribute__((used)) static void WIN_DisableAltTab( void )
{
 if ( s_alttab_disabled )
  return;

 if ( !Q_stricmp( Cvar_VariableString( "arch" ), "winnt" ) )
 {
  RegisterHotKey( 0, 0, MOD_ALT, VK_TAB );
 }
 else
 {
  BOOL old;

  SystemParametersInfo( SPI_SCREENSAVERRUNNING, 1, &old, 0 );
 }
 s_alttab_disabled = qtrue;
}
