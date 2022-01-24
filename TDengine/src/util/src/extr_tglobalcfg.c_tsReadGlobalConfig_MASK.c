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
struct TYPE_3__ {scalar_t__ cfgStatus; } ;
typedef  TYPE_1__ SGlobalConfig ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ TSDB_CFG_CSTATUS_FILE ; 
 char* configDir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 TYPE_1__* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__* tsInternalIp ; 
 scalar_t__* tsLocalIp ; 
 scalar_t__* tsMasterIp ; 
 int tsNumOfCores ; 
 scalar_t__* tsPrivateIp ; 
 scalar_t__* tsPublicIp ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__* tsSecondIp ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int tsVersion ; 
 scalar_t__ tscEmbedded ; 
 char* version ; 

bool FUNC18() {
  FUNC13();

  FILE * fp;
  char * line, *option, *value, *value1;
  size_t len;
  int    olen, vlen, vlen1;
  char   fileName[128];

  FUNC6(fileName, "%s/taos.cfg", configDir);
  fp = FUNC2(fileName, "r");
  if (fp == NULL) {
  } else {
    line = NULL;
    while (!FUNC1(fp)) {
      FUNC11(line);
      line = option = value = NULL;
      len = olen = vlen = 0;

      FUNC3(&line, &len, fp);
      if (line == NULL) break;

      FUNC5(line, &option, &olen);
      if (olen == 0) continue;
      option[olen] = 0;

      FUNC5(option + olen + 1, &value, &vlen);
      if (vlen == 0) continue;
      value[vlen] = 0;

      // For dataDir, the format is:
      // dataDir    /mnt/disk1    0
      FUNC5(value + vlen + 1, &value1, &vlen1);

      FUNC14(option, value);
    }

    FUNC11(line);
    FUNC0(fp);
  }

  FUNC15();

  if (tsPrivateIp[0] == 0) {
    FUNC9(tsPrivateIp);
  }

  if (tsPublicIp[0] == 0) {
    FUNC7(tsPublicIp, tsPrivateIp);
  }

  if (tsInternalIp[0] == 0) {
    FUNC7(tsInternalIp, tsPrivateIp);
  }

  if (tsLocalIp[0] == 0) {
    FUNC7(tsLocalIp, tsPrivateIp);
  }

  if (tsMasterIp[0] == 0) {
    FUNC7(tsMasterIp, tsPrivateIp);
  }

  if (tsSecondIp[0] == 0) {
    FUNC7(tsSecondIp, tsMasterIp);
  }

  FUNC10();

  FUNC16();

  SGlobalConfig *cfg_timezone = FUNC12("timezone");
  if (cfg_timezone && cfg_timezone->cfgStatus == TSDB_CFG_CSTATUS_FILE) {
    FUNC17();
  }

  if (tsNumOfCores <= 0) {
    tsNumOfCores = 1;
  }

  if (FUNC8(tsPrivateIp) == 0) {
    FUNC4("privateIp is null");
    return false;
  }

  if (tscEmbedded) {
    FUNC7(tsLocalIp, tsPrivateIp);
  }

  tsVersion = 0;
  for (int i = 0; i < 10; i++) {
    if (version[i] >= '0' && version[i] <= '9') {
      tsVersion = tsVersion * 10 + (version[i] - '0');
    } else if (version[i] == 0) {
      break;
    }
  }
  tsVersion = 10 * tsVersion;

  return true;
}