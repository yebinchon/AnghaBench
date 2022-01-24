#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cfgType; scalar_t__ valType; char* option; scalar_t__ ptr; } ;
typedef  TYPE_1__ SGlobalConfig ;

/* Variables and functions */
 int TSDB_CFG_CTYPE_B_LOG ; 
 scalar_t__ TSDB_CFG_VTYPE_INT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__* tsGlobalConfig ; 
 int tsGlobalConfigNum ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(char *msg) {
  char *option, *value;
  int   olen, vlen, code = 0;
  int   vint = 0;

  FUNC3(msg, &option, &olen);
  if (olen == 0) return 0;

  FUNC3(option + olen + 1, &value, &vlen);
  if (vlen == 0)
    vint = 135;
  else {
    vint = FUNC0(value);
  }

  FUNC2("change dynamic option: %s, value: %d", option, vint);

  for (int i = 0; i < tsGlobalConfigNum; ++i) {
    SGlobalConfig *cfg = tsGlobalConfig + i;
    if (!(cfg->cfgType & TSDB_CFG_CTYPE_B_LOG)) continue;
    if (cfg->valType != TSDB_CFG_VTYPE_INT) continue;
    if (FUNC6(option, cfg->option, olen) != 0) continue;
    *((int *)cfg->ptr) = vint;

    if (FUNC6(cfg->option, "monitor", olen) == 0) {
      if (0 == vint) {
        if(&stopMonitor) (void)FUNC5)();
      } else {
        if(&startMonitor) FUNC4)();
      }
      return code;
    }

    if (FUNC6(cfg->option, "debugFlag", olen) == 0) {
      FUNC12();
    }
    
    return code;
  }

  if (FUNC6(option, "resetlog", 8) == 0) {
    FUNC10();
    FUNC11();
    return code;
  }

  if (FUNC6(option, "resetQueryCache", 15) == 0) {
    if (&taosLogSqlFp) {
      FUNC2("the query cache of internal client will reset");
      FUNC9("reset query cache");
    } else {
      FUNC1("reset query cache can't be executed, for monitor not initialized");
      code = 169;
    }
  } else {
    code = 169;  // INVALID_OPTION
  }

  return code;
}