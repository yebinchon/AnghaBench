
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CodeError (char*) ;
 int MAX_LINE_LENGTH ;
 int currentFileLine ;
 scalar_t__* lineBuffer ;
 scalar_t__ lineParseOffset ;
 int memcpy (scalar_t__*,char*,int) ;
 scalar_t__* token ;

char *ExtractLine( char *data ) {
 int i;

 currentFileLine++;
 lineParseOffset = 0;
 token[0] = 0;

 if ( data[0] == 0 ) {
  lineBuffer[0] = 0;
  return ((void*)0);
 }

 for ( i = 0 ; i < MAX_LINE_LENGTH ; i++ ) {
  if ( data[i] == 0 || data[i] == '\n' ) {
   break;
  }
 }
 if ( i == MAX_LINE_LENGTH ) {
  CodeError( "MAX_LINE_LENGTH" );
  return data;
 }
 memcpy( lineBuffer, data, i );
 lineBuffer[i] = 0;
 data += i;
 if ( data[0] == '\n' ) {
  data++;
 }
 return data;
}
