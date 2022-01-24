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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ cfgStatus; } ;
typedef  TYPE_1__ SGlobalConfig ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ MILLISECOND_PER_HOUR ; 
 scalar_t__ MILLISECOND_PER_SECOND ; 
 scalar_t__ TSDB_CFG_CSTATUS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 size_t daylight ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ timezone ; 
 TYPE_1__* FUNC11 (char*) ; 
 int /*<<< orphan*/  tsTimezone ; 
 char** tzname ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13() {
  SGlobalConfig *cfg_timezone = FUNC11("timezone");
  if (cfg_timezone == NULL) return;
  if (cfg_timezone->cfgStatus >= TSDB_CFG_CSTATUS_DEFAULT) {
    return;
  }

  /*
   * NOTE: do not remove it.
   * Enforce set the correct daylight saving time(DST) flag according
   * to current time
   */
  time_t    tx1 = FUNC10(NULL);
  struct tm tm1;
  FUNC4(&tx1, &tm1);

  /* load time zone string from /etc/timezone */
  FILE *f = FUNC2("/etc/timezone", "r");
  char  buf[64] = {0};
  if (f != NULL) {
    FUNC3(buf, 64, 1, f);
    FUNC1(f);
  }

  char *lineEnd = FUNC9(buf, "\n");
  if (lineEnd != NULL) {
    *lineEnd = 0;
  }

  // for CentOS system, /etc/timezone does not exist. Ignore the TZ environment variables
  if (FUNC8(buf) > 0) {
    FUNC6("TZ", buf, 1);
  }

  // get and set default timezone
  FUNC12();

  /*
   * get CURRENT time zone.
   * system current time zone is affected by daylight saving time(DST)
   *
   * e.g., the local time zone of London in DST is GMT+01:00,
   * otherwise is GMT+00:00
   */
  int32_t tz = (-timezone * MILLISECOND_PER_SECOND) / MILLISECOND_PER_HOUR;
  tz += daylight;

  /*
   * format example:
   *
   * Asia/Shanghai   (CST, +0800)
   * Europe/London   (BST, +0100)
   */
  FUNC7(tsTimezone, "%s (%s, %s%02d00)", buf, tzname[daylight], tz >= 0 ? "+" : "-", FUNC0(tz));

  cfg_timezone->cfgStatus = TSDB_CFG_CSTATUS_DEFAULT;
  FUNC5("timezone not configured, set to system default:%s", tsTimezone);
}