#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char** we_wordv; } ;
typedef  TYPE_1__ wordexp_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* configDir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 char* logDir ; 
 int mdebugFlag ; 
 int /*<<< orphan*/  FUNC4 (char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int sdbDebugFlag ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

void FUNC13() {
  FUNC9();

  FILE * fp;
  char * line, *option, *value;
  size_t len;
  int    olen, vlen;
  char   fileName[128];

  mdebugFlag = 135;
  sdbDebugFlag = 135;

  wordexp_t full_path;
  FUNC11(configDir, &full_path, 0);
  if (full_path.we_wordv != NULL && full_path.we_wordv[0] != NULL) {
    FUNC7(configDir, full_path.we_wordv[0]);
  } else {
    FUNC5("configDir:%s not there, use default value: /etc/taos", configDir);
    FUNC7(configDir, "/etc/taos");
  }
  FUNC12(&full_path);

  FUNC10("logDir", logDir);
  FUNC6(fileName, "%s/taos.cfg", configDir);
  fp = FUNC2(fileName, "r");
  if (fp == NULL) {
    FUNC5("\noption file:%s not found, all options are set to system default\n", fileName);
    return;
  }

  line = NULL;
  while (!FUNC1(fp)) {
    FUNC8(line);
    line = option = value = NULL;
    len = olen = vlen = 0;

    FUNC3(&line, &len, fp);
    if (line == NULL) break;

    FUNC4(line, &option, &olen);
    if (olen == 0) continue;
    option[olen] = 0;

    FUNC4(option + olen + 1, &value, &vlen);
    if (vlen == 0) continue;
    value[vlen] = 0;

    FUNC10(option, value);
  }

  FUNC8(line);
  FUNC0(fp);
}