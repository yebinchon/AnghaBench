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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,long) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(const char *filename)
{
  FILE *pidfile;
  long pid;

  pid = (long)FUNC3();
  pidfile = FUNC1(filename, "wb");
  if(!pidfile) {
    FUNC4("Couldn't write pid file: %s %s", filename, FUNC5(errno));
    return 0; /* fail */
  }
  FUNC2(pidfile, "%ld\n", pid);
  FUNC0(pidfile);
  FUNC4("Wrote pid %ld to %s", pid, filename);
  return 1; /* success */
}