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
struct TYPE_4__ {size_t characterCount; TYPE_1__* characterList; } ;
struct TYPE_3__ {char const* name; int headImage; void* base; void* imageName; } ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t MAX_HEADS ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**,char const**) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ uiInfo ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static qboolean FUNC6(char **p) {
  char *token;
  const char *tempStr;

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
      // two tokens per line, character name and sex
      if (!FUNC4(p, &uiInfo.characterList[uiInfo.characterCount].name) || !FUNC4(p, &tempStr)) {
        return qfalse;
      }
    
      uiInfo.characterList[uiInfo.characterCount].headImage = -1;
			uiInfo.characterList[uiInfo.characterCount].imageName = FUNC3(FUNC5("models/players/heads/%s/icon_default.tga", uiInfo.characterList[uiInfo.characterCount].name));

	  if (tempStr && (!FUNC2(tempStr, "female"))) {
        uiInfo.characterList[uiInfo.characterCount].base = FUNC3(FUNC5("Janet"));
      } else if (tempStr && (!FUNC2(tempStr, "male"))) {
        uiInfo.characterList[uiInfo.characterCount].base = FUNC3(FUNC5("James"));
	  } else {
        uiInfo.characterList[uiInfo.characterCount].base = FUNC3(FUNC5("%s",tempStr));
	  }

      FUNC1("Loaded %s character %s.\n", uiInfo.characterList[uiInfo.characterCount].base, uiInfo.characterList[uiInfo.characterCount].name);
      if (uiInfo.characterCount < MAX_HEADS) {
        uiInfo.characterCount++;
      } else {
        FUNC1("Too many characters, last character replaced!\n");
      }
     
      token = FUNC0(p, qtrue);
      if (token[0] != '}') {
        return qfalse;
      }
    }
  }

  return qfalse;
}