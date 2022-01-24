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
 int EINTR ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(const char *filename)
{
  FILE *lockfile;
  int error = 0;
  int res;

  do {
    lockfile = FUNC1(filename, "wb");
  } while((lockfile == NULL) && ((error = errno) == EINTR));
  if(lockfile == NULL) {
    FUNC2("Error creating lock file %s error: %d %s",
           filename, error, FUNC3(error));
    return;
  }

  do {
    res = FUNC0(lockfile);
  } while(res && ((error = errno) == EINTR));
  if(res)
    FUNC2("Error closing lock file %s error: %d %s",
           filename, error, FUNC3(error));
}