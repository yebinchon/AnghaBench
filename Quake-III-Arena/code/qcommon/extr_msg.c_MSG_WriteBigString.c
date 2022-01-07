
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;
typedef int msg_t ;
typedef int byte ;


 int BIG_INFO_STRING ;
 int Com_Printf (char*) ;
 int MSG_WriteData (int *,char*,int) ;
 int Q_strncpyz (char*,char const*,int) ;
 int strlen (char const*) ;

void MSG_WriteBigString( msg_t *sb, const char *s ) {
 if ( !s ) {
  MSG_WriteData (sb, "", 1);
 } else {
  int l,i;
  char string[BIG_INFO_STRING];

  l = strlen( s );
  if ( l >= BIG_INFO_STRING ) {
   Com_Printf( "MSG_WriteString: BIG_INFO_STRING" );
   MSG_WriteData (sb, "", 1);
   return;
  }
  Q_strncpyz( string, s, sizeof( string ) );


  for ( i = 0 ; i < l ; i++ ) {
   if ( ((byte *)string)[i] > 127 ) {
    string[i] = '.';
   }
  }

  MSG_WriteData (sb, string, l+1);
 }
}
