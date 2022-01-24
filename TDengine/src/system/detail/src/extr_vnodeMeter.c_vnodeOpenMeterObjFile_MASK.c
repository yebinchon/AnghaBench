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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int TSDB_FILENAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int,...) ; 
 scalar_t__ FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* tsDirectory ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

FILE *FUNC8(int vnode) {
  FILE *      fp;
  char        fileName[TSDB_FILENAME_LEN];
  struct stat fstat;

  // check if directory exists
  FUNC4(fileName, "%s/vnode%d", tsDirectory, vnode);
  if (FUNC5(fileName, &fstat) < 0) return NULL;

  FUNC4(fileName, "%s/vnode%d/meterObj.v%d", tsDirectory, vnode, vnode);
  if (FUNC5(fileName, &fstat) < 0) return NULL;

  fp = FUNC3(fileName, "r+");
  if (fp != NULL) {
    if (FUNC7(fp) < 0) {
      FUNC0("file:%s is corrupted, need to restore it first", fileName);
      FUNC2(fp);

      // todo: how to recover
      FUNC1(1);
    }
  } else {
    FUNC0("failed to open %s, reason:%s", fileName, FUNC6(errno));
  }

  return fp;
}