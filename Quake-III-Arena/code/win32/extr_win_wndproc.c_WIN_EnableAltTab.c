
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int Cvar_VariableString (char*) ;
 int Q_stricmp (int ,char*) ;
 int SPI_SCREENSAVERRUNNING ;
 int SystemParametersInfo (int ,int ,int *,int ) ;
 int UnregisterHotKey (int ,int ) ;
 scalar_t__ qfalse ;
 scalar_t__ s_alttab_disabled ;

__attribute__((used)) static void WIN_EnableAltTab( void )
{
 if ( s_alttab_disabled )
 {
  if ( !Q_stricmp( Cvar_VariableString( "arch" ), "winnt" ) )
  {
   UnregisterHotKey( 0, 0 );
  }
  else
  {
   BOOL old;

   SystemParametersInfo( SPI_SCREENSAVERRUNNING, 0, &old, 0 );
  }

  s_alttab_disabled = qfalse;
 }
}
