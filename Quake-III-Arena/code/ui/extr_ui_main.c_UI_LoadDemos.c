
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int demoExt ;
struct TYPE_2__ {int demoCount; int * demoList; } ;


 int Com_sprintf (char*,int,char*,int) ;
 int MAX_DEMOS ;
 int Q_stricmp (char*,char*) ;
 int Q_strupr (char*) ;
 int String_Alloc (char*) ;
 int strlen (char*) ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;
 int trap_FS_GetFileList (char*,char*,char*,int) ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static void UI_LoadDemos() {
 char demolist[4096];
 char demoExt[32];
 char *demoname;
 int i, len;

 Com_sprintf(demoExt, sizeof(demoExt), "dm_%d", (int)trap_Cvar_VariableValue("protocol"));

 uiInfo.demoCount = trap_FS_GetFileList( "demos", demoExt, demolist, 4096 );

 Com_sprintf(demoExt, sizeof(demoExt), ".dm_%d", (int)trap_Cvar_VariableValue("protocol"));

 if (uiInfo.demoCount) {
  if (uiInfo.demoCount > MAX_DEMOS) {
   uiInfo.demoCount = MAX_DEMOS;
  }
  demoname = demolist;
  for ( i = 0; i < uiInfo.demoCount; i++ ) {
   len = strlen( demoname );
   if (!Q_stricmp(demoname + len - strlen(demoExt), demoExt)) {
    demoname[len-strlen(demoExt)] = '\0';
   }
   Q_strupr(demoname);
   uiInfo.demoList[i] = String_Alloc(demoname);
   demoname += len + 1;
  }
 }

}
