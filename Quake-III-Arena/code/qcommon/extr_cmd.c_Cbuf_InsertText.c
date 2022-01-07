
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cursize; int maxsize; char* data; } ;


 int Com_Memcpy (char*,char const*,int) ;
 int Com_Printf (char*) ;
 TYPE_1__ cmd_text ;
 int strlen (char const*) ;

void Cbuf_InsertText( const char *text ) {
 int len;
 int i;

 len = strlen( text ) + 1;
 if ( len + cmd_text.cursize > cmd_text.maxsize ) {
  Com_Printf( "Cbuf_InsertText overflowed\n" );
  return;
 }


 for ( i = cmd_text.cursize - 1 ; i >= 0 ; i-- ) {
  cmd_text.data[ i + len ] = cmd_text.data[ i ];
 }


 Com_Memcpy( cmd_text.data, text, len - 1 );


 cmd_text.data[ len - 1 ] = '\n';

 cmd_text.cursize += len;
}
