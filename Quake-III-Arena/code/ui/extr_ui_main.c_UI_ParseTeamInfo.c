
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Alias_Parse (char**) ;
 char* COM_ParseExt (char**,int ) ;
 int Character_Parse (char**) ;
 char* GetMenuBuffer (char const*) ;
 scalar_t__ Q_stricmp (char*,char*) ;
 scalar_t__ Team_Parse (char**) ;
 int qtrue ;

__attribute__((used)) static void UI_ParseTeamInfo(const char *teamFile) {
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

    if (Q_stricmp(token, "teams") == 0) {

      if (Team_Parse(&p)) {
        continue;
      } else {
        break;
      }
    }

    if (Q_stricmp(token, "characters") == 0) {
      Character_Parse(&p);
    }

    if (Q_stricmp(token, "aliases") == 0) {
      Alias_Parse(&p);
    }

  }

}
