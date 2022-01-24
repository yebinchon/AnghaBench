#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  itemDef_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* runScript ) (char**) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ *,char**) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_2__* DC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,char const**) ; 
 TYPE_1__* commandList ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int scriptCommandCount ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 

void FUNC6(itemDef_t *item, const char *s) {
  char script[1024], *p;
  int i;
  qboolean bRan;
  FUNC3(script, 0, sizeof(script));
  if (item && s && s[0]) {
    FUNC0(script, 1024, s);
    p = script;
    while (1) {
      const char *command;
      // expect command then arguments, ; ends command, NULL ends script
      if (!FUNC2(&p, &command)) {
        return;
      }

      if (command[0] == ';' && command[1] == '\0') {
        continue;
      }

      bRan = qfalse;
      for (i = 0; i < scriptCommandCount; i++) {
        if (FUNC1(command, commandList[i].name) == 0) {
          (commandList[i].handler(item, &p));
          bRan = qtrue;
          break;
        }
      }
      // not in our auto list, pass to handler
      if (!bRan) {
        DC->runScript(&p);
      }
    }
  }
}