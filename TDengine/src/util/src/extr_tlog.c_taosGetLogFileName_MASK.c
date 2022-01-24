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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 int taosLogFileNum ; 
 char* taosLogName ; 

void FUNC3(char *fn) {
  if (taosLogFileNum > 1) {
    for (int i = 0; i < taosLogFileNum; i++) {
      char fileName[LOG_FILE_NAME_LEN];

      FUNC0(fileName, "%s%d.0", fn, i);
      bool file1open = FUNC2(fileName);

      FUNC0(fileName, "%s%d.1", fn, i);
      bool file2open = FUNC2(fileName);

      if (!file1open && !file2open) {
        FUNC0(taosLogName, "%s%d", fn, i);
        return;
      }
    }
  }

  FUNC1(taosLogName, fn);
}