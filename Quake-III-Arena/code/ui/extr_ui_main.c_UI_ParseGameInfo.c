
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* COM_ParseExt (char**,int ) ;
 scalar_t__ GameType_Parse (char**,int ) ;
 char* GetMenuBuffer (char const*) ;
 int MapList_Parse (char**) ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static void UI_ParseGameInfo(const char *teamFile) {
 char *token;
 char *p;
 char *buff = ((void*)0);


 buff = GetMenuBuffer(teamFile);
 if (!buff) {
  return;
 }

 p = buff;

 while ( 1 ) {
  token = COM_ParseExt( &p, qtrue );
  if( !token || token[0] == 0 || token[0] == '}') {
   break;
  }

  if ( Q_stricmp( token, "}" ) == 0 ) {
   break;
  }

  if (Q_stricmp(token, "gametypes") == 0) {

   if (GameType_Parse(&p, qfalse)) {
    continue;
   } else {
    break;
   }
  }

  if (Q_stricmp(token, "joingametypes") == 0) {

   if (GameType_Parse(&p, qtrue)) {
    continue;
   } else {
    break;
   }
  }

  if (Q_stricmp(token, "maps") == 0) {

   MapList_Parse(&p);
  }

 }
}
