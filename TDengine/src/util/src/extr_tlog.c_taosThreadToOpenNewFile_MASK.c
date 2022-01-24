#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int fd; } ;

/* Variables and functions */
 int LOG_FILE_NAME_LEN ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 TYPE_1__* logHandle ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int,int) ; 
 scalar_t__ openInProgress ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int taosLogFlag ; 
 scalar_t__ taosLogLines ; 
 char* taosLogName ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void *FUNC7(void *param) {
  char name[LOG_FILE_NAME_LEN];

  taosLogFlag ^= 1;
  taosLogLines = 0;
  FUNC3(name, "%s.%d", taosLogName, taosLogFlag);

  FUNC6(0);

  int fd = FUNC1(name, O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU | S_IRWXG | S_IRWXO);
  FUNC5(fd);
  FUNC0(fd, 0, SEEK_SET);

  int oldFd = logHandle->fd;
  logHandle->fd = fd;
  taosLogLines = 0;
  openInProgress = 0;
  FUNC2("new log file is opened!!!");

  FUNC4(oldFd);
  return NULL;
}