
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sfxHandle_t ;
typedef int name ;


 int CHAN_LOCAL_SOUND ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_sprintf (char*,int,char*,int ) ;
 int Q_strncpyz (char*,int ,int) ;
 int Q_strrchr (int ,char) ;
 scalar_t__ S_RegisterSound (char*,int ) ;
 int S_StartLocalSound (scalar_t__,int ) ;
 int qfalse ;

void S_Play_f( void ) {
 int i;
 sfxHandle_t h;
 char name[256];

 i = 1;
 while ( i<Cmd_Argc() ) {
  if ( !Q_strrchr(Cmd_Argv(i), '.') ) {
   Com_sprintf( name, sizeof(name), "%s.wav", Cmd_Argv(1) );
  } else {
   Q_strncpyz( name, Cmd_Argv(i), sizeof(name) );
  }
  h = S_RegisterSound( name, qfalse );
  if( h ) {
   S_StartLocalSound( h, CHAN_LOCAL_SOUND );
  }
  i++;
 }
}
