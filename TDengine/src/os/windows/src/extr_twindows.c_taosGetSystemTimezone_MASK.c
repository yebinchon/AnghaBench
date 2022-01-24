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

/* Variables and functions */
 scalar_t__ TSDB_CFG_CSTATUS_DEFAULT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (char*) ; 
 int /*<<< orphan*/  tsTimezone ; 

void FUNC5() {
  // get and set default timezone
  SGlobalConfig *cfg_timezone = FUNC4("timezone");
  if (cfg_timezone && cfg_timezone->cfgStatus < TSDB_CFG_CSTATUS_DEFAULT) {
    char *tz = FUNC0("TZ");
    if (tz == NULL || FUNC3(tz) == 0) {
      FUNC2(tsTimezone, "not configured");
    }
    else {
      FUNC2(tsTimezone, tz);
    }
    cfg_timezone->cfgStatus = TSDB_CFG_CSTATUS_DEFAULT;
    FUNC1("timezone not configured, use default");
  }
}