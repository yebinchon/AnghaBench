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
 int LOG_FILE_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int) ; 
 int taosLogFlag ; 
 scalar_t__ taosLogLines ; 
 scalar_t__ taosLogMaxLines ; 
 char* taosLogName ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4() {
  char lastName[LOG_FILE_NAME_LEN];
  FUNC2(lastName, "%s.%d", taosLogName, taosLogFlag);

  // force create a new log file
  taosLogLines = taosLogMaxLines + 10;

  FUNC3();
  FUNC1(lastName);

  FUNC0("==================================");
  FUNC0("   reset log file ");
}