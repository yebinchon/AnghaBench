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
 int /*<<< orphan*/  MAXPATHLEN ; 
 int PERFINDEX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (char*) ; 

int FUNC5(const char* name, char* path) {
  char *cmd;
  int retval;
  
  retval = FUNC1(&cmd, "diskutil erasevolume HFS+ '%s' `hdiutil attach -nomount ram://1500000` >/dev/null", name);
  FUNC0(retval > 0, "asprintf failed");

  retval = FUNC4(cmd);
  FUNC0(retval == 0, "diskutil command failed");

  FUNC3(path, MAXPATHLEN, "/Volumes/%s", name);

  FUNC2(cmd);

  return PERFINDEX_SUCCESS;
}