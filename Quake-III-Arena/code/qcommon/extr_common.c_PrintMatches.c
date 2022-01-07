
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,char const*) ;
 int Q_stricmpn (char const*,int ,int ) ;
 int shortestMatch ;
 int strlen (int ) ;

__attribute__((used)) static void PrintMatches( const char *s ) {
 if ( !Q_stricmpn( s, shortestMatch, strlen( shortestMatch ) ) ) {
  Com_Printf( "    %s\n", s );
 }
}
