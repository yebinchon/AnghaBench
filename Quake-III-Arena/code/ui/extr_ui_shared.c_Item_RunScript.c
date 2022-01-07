
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int script ;
typedef int qboolean ;
typedef int itemDef_t ;
struct TYPE_4__ {int (* runScript ) (char**) ;} ;
struct TYPE_3__ {int (* handler ) (int *,char**) ;int name; } ;


 TYPE_2__* DC ;
 int Q_strcat (char*,int,char const*) ;
 scalar_t__ Q_stricmp (char const*,int ) ;
 int String_Parse (char**,char const**) ;
 TYPE_1__* commandList ;
 int memset (char*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int scriptCommandCount ;
 int stub1 (int *,char**) ;
 int stub2 (char**) ;

void Item_RunScript(itemDef_t *item, const char *s) {
  char script[1024], *p;
  int i;
  qboolean bRan;
  memset(script, 0, sizeof(script));
  if (item && s && s[0]) {
    Q_strcat(script, 1024, s);
    p = script;
    while (1) {
      const char *command;

      if (!String_Parse(&p, &command)) {
        return;
      }

      if (command[0] == ';' && command[1] == '\0') {
        continue;
      }

      bRan = qfalse;
      for (i = 0; i < scriptCommandCount; i++) {
        if (Q_stricmp(command, commandList[i].name) == 0) {
          (commandList[i].handler(item, &p));
          bRan = qtrue;
          break;
        }
      }

      if (!bRan) {
        DC->runScript(&p);
      }
    }
  }
}
