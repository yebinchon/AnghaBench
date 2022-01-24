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
struct stat {int dummy; } ;

/* Variables and functions */
 char* dataDir ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* mgmtDirectory ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* tsDirectory ; 

int FUNC5() {
  struct stat dirstat;
  FUNC4(tsDirectory, dataDir);
  if (FUNC3(dataDir, &dirstat) < 0) {
    FUNC1(dataDir, 0755);
  }

  char fileName[128];

  FUNC2(fileName, "%s/tsdb", tsDirectory);
  FUNC1(fileName, 0755);

  FUNC2(fileName, "%s/data", tsDirectory);
  FUNC1(fileName, 0755);

  FUNC2(mgmtDirectory, "%s/mgmt", tsDirectory);
  FUNC2(tsDirectory, "%s/tsdb", dataDir);
  FUNC0(dataDir);

  return 0;
}