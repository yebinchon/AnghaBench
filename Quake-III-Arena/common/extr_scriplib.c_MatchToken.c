
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*,char*,int ) ;
 int GetToken (int ) ;
 int qtrue ;
 int scriptline ;
 scalar_t__ strcmp (int ,char*) ;
 int token ;

void MatchToken( char *match ) {
 GetToken( qtrue );

 if ( strcmp( token, match ) ) {
  Error( "MatchToken( \"%s\" ) failed at line %i", match, scriptline );
 }
}
