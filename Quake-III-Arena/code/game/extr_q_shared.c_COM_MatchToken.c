
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* COM_Parse (char**) ;
 int Com_Error (int ,char*,char*,char*) ;
 int ERR_DROP ;
 scalar_t__ strcmp (char*,char*) ;

void COM_MatchToken( char **buf_p, char *match ) {
 char *token;

 token = COM_Parse( buf_p );
 if ( strcmp( token, match ) ) {
  Com_Error( ERR_DROP, "MatchToken: %s != %s", token, match );
 }
}
