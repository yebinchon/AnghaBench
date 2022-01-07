
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 char* lineBuffer ;
 size_t lineParseOffset ;
 int qfalse ;
 int qtrue ;
 int* token ;

qboolean Parse( void ) {
 int c;
 int len;

 len = 0;
 token[0] = 0;


 while ( lineBuffer[ lineParseOffset ] <= ' ' ) {
  if ( lineBuffer[ lineParseOffset ] == 0 ) {
   return qfalse;
  }
  lineParseOffset++;
 }


 c = lineBuffer[ lineParseOffset ];
 if ( c == ';' ) {
  return qfalse;
 }



 do {
  token[len] = c;
  len++;
  lineParseOffset++;
  c = lineBuffer[ lineParseOffset ];
 } while (c>32);

 token[len] = 0;
 return qtrue;
}
