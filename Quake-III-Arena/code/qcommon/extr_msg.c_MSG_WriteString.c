
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;
typedef int msg_t ;
typedef int byte ;


 int Com_Printf (char*) ;
 int MAX_STRING_CHARS ;
 int MSG_WriteData (int *,char*,int) ;
 int Q_strncpyz (char*,char const*,int) ;
 int strlen (char const*) ;

void MSG_WriteString( msg_t *sb, const char *s ) {
 if ( !s ) {
  MSG_WriteData (sb, "", 1);
 } else {
  int l,i;
  char string[MAX_STRING_CHARS];

  l = strlen( s );
  if ( l >= MAX_STRING_CHARS ) {
   Com_Printf( "MSG_WriteString: MAX_STRING_CHARS" );
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
