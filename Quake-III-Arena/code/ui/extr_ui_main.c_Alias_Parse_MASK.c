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
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {size_t aliasCount; TYPE_1__* aliasList; } ;
struct TYPE_3__ {int /*<<< orphan*/  ai; int /*<<< orphan*/  name; int /*<<< orphan*/  action; } ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t MAX_ALIASES ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ uiInfo ; 

__attribute__((used)) static qboolean FUNC4(char **p) {
  char *token;

  token = FUNC0(p, qtrue);

  if (token[0] != '{') {
    return qfalse;
  }

  while ( 1 ) {
    token = FUNC0(p, qtrue);

    if (FUNC2(token, "}") == 0) {
      return qtrue;
    }

    if ( !token || token[0] == 0 ) {
      return qfalse;
    }

    if (token[0] == '{') {
      // three tokens per line, character name, bot alias, and preferred action a - all purpose, d - defense, o - offense
      if (!FUNC3(p, &uiInfo.aliasList[uiInfo.aliasCount].name) || !FUNC3(p, &uiInfo.aliasList[uiInfo.aliasCount].ai) || !FUNC3(p, &uiInfo.aliasList[uiInfo.aliasCount].action)) {
        return qfalse;
      }
    
      FUNC1("Loaded character alias %s using character ai %s.\n", uiInfo.aliasList[uiInfo.aliasCount].name, uiInfo.aliasList[uiInfo.aliasCount].ai);
      if (uiInfo.aliasCount < MAX_ALIASES) {
        uiInfo.aliasCount++;
      } else {
        FUNC1("Too many aliases, last alias replaced!\n");
      }
     
      token = FUNC0(p, qtrue);
      if (token[0] != '}') {
        return qfalse;
      }
    }
  }

  return qfalse;
}