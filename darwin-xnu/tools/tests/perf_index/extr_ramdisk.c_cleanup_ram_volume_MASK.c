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
 int PERFINDEX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 

int FUNC4(char* path) {
  char *cmd;
  int retval;

  retval = FUNC1(&cmd, "umount -f '%s' >/dev/null", path);
  FUNC0(retval > 0, "asprintf failed");

  retval = FUNC3(cmd);
  FUNC0(retval == 0, "diskutil command failed");

  FUNC2(cmd);

  return PERFINDEX_SUCCESS;
}