
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int widthInChars; int scroll; int cursor; scalar_t__ buffer; } ;
typedef TYPE_1__ field_t ;
struct TYPE_5__ {int realtime; } ;


 int Com_Error (int ,char*) ;
 int Com_Memcpy (char*,scalar_t__,int) ;
 int ERR_DROP ;
 int MAX_STRING_CHARS ;
 int Q_PrintStrlen (char*) ;
 int SCR_DrawBigString (int,int,char*,double) ;
 int SCR_DrawSmallChar (int,int,int) ;
 int SCR_DrawSmallStringExt (int,int,char*,float*,int ) ;
 int SMALLCHAR_WIDTH ;
 TYPE_2__ cls ;
 scalar_t__ key_overstrikeMode ;
 int qfalse ;
 int strlen (scalar_t__) ;

void Field_VariableSizeDraw( field_t *edit, int x, int y, int width, int size, qboolean showCursor ) {
 int len;
 int drawLen;
 int prestep;
 int cursorChar;
 char str[MAX_STRING_CHARS];
 int i;

 drawLen = edit->widthInChars;
 len = strlen( edit->buffer ) + 1;


 if ( len <= drawLen ) {
  prestep = 0;
 } else {
  if ( edit->scroll + drawLen > len ) {
   edit->scroll = len - drawLen;
   if ( edit->scroll < 0 ) {
    edit->scroll = 0;
   }
  }
  prestep = edit->scroll;
 }

 if ( prestep + drawLen > len ) {
  drawLen = len - prestep;
 }


 if ( drawLen >= MAX_STRING_CHARS ) {
  Com_Error( ERR_DROP, "drawLen >= MAX_STRING_CHARS" );
 }

 Com_Memcpy( str, edit->buffer + prestep, drawLen );
 str[ drawLen ] = 0;


 if ( size == SMALLCHAR_WIDTH ) {
  float color[4];

  color[0] = color[1] = color[2] = color[3] = 1.0;
  SCR_DrawSmallStringExt( x, y, str, color, qfalse );
 } else {

  SCR_DrawBigString( x, y, str, 1.0 );
 }


 if ( !showCursor ) {
  return;
 }

 if ( (int)( cls.realtime >> 8 ) & 1 ) {
  return;
 }

 if ( key_overstrikeMode ) {
  cursorChar = 11;
 } else {
  cursorChar = 10;
 }

 i = drawLen - ( Q_PrintStrlen( str ) + 1 );

 if ( size == SMALLCHAR_WIDTH ) {
  SCR_DrawSmallChar( x + ( edit->cursor - prestep - i ) * size, y, cursorChar );
 } else {
  str[0] = cursorChar;
  str[1] = 0;
  SCR_DrawBigString( x + ( edit->cursor - prestep - i ) * size, y, str, 1.0 );

 }
}
