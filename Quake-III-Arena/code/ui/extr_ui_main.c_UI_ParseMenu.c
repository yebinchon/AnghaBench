
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string; } ;
typedef TYPE_1__ pc_token_t ;


 scalar_t__ Asset_Parse (int) ;
 int Com_Printf (char*,char const*) ;
 int Menu_New (int) ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int trap_PC_FreeSource (int) ;
 int trap_PC_LoadSource (char const*) ;
 int trap_PC_ReadToken (int,TYPE_1__*) ;

void UI_ParseMenu(const char *menuFile) {
 int handle;
 pc_token_t token;

 Com_Printf("Parsing menu file:%s\n", menuFile);

 handle = trap_PC_LoadSource(menuFile);
 if (!handle) {
  return;
 }

 while ( 1 ) {
  memset(&token, 0, sizeof(pc_token_t));
  if (!trap_PC_ReadToken( handle, &token )) {
   break;
  }
  if ( token.string[0] == '}' ) {
   break;
  }

  if (Q_stricmp(token.string, "assetGlobalDef") == 0) {
   if (Asset_Parse(handle)) {
    continue;
   } else {
    break;
   }
  }

  if (Q_stricmp(token.string, "menudef") == 0) {

   Menu_New(handle);
  }
 }
 trap_PC_FreeSource(handle);
}
