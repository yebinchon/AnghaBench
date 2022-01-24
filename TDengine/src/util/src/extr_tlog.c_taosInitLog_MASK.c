#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  TSDB_DEFAULT_LOG_BUF_SIZE ; 
 int /*<<< orphan*/ * logHandle ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 () ; 

int FUNC3(char *logName, int numOfLogLines, int maxFiles) {
  logHandle = FUNC0(TSDB_DEFAULT_LOG_BUF_SIZE);
  if (logHandle == NULL) return -1;

  if (FUNC1(logName, numOfLogLines, maxFiles) < 0) return -1;

  if (FUNC2() < 0) return -1;
  return 0;
}