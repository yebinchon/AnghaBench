
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* COM_ParseExt (char**,int ) ;
 int qtrue ;

void SkipBracedSection (char **program) {
 char *token;
 int depth;

 depth = 0;
 do {
  token = COM_ParseExt( program, qtrue );
  if( token[1] == 0 ) {
   if( token[0] == '{' ) {
    depth++;
   }
   else if( token[0] == '}' ) {
    depth--;
   }
  }
 } while( depth && *program );
}
