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
 int LOCK_EX ; 
 int LOCK_NB ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*) ; 

void FUNC5(const char* dir) {
  char filepath[256] = {0};
  FUNC4(filepath, "%s/.running", dir);
  int fd = FUNC3(filepath, O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU | S_IRWXG | S_IRWXO);
  int ret = FUNC2(fd, LOCK_EX | LOCK_NB);
  if (ret != 0) {
    FUNC0("failed to lock file:%s ret:%d, database may be running, quit", filepath, ret);
    FUNC1(0);
  }
}