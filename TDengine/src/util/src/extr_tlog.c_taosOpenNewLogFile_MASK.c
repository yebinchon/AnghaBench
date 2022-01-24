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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  logMutex ; 
 int openInProgress ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ taosLogLines ; 
 scalar_t__ taosLogMaxLines ; 
 int /*<<< orphan*/  taosThreadToOpenNewFile ; 

int FUNC7() {
  FUNC5(&logMutex);

  if (taosLogLines > taosLogMaxLines && openInProgress == 0) {
    openInProgress = 1;

    FUNC0("open new log file ......");
    pthread_t      thread;
    pthread_attr_t attr;
    FUNC2(&attr);
    FUNC3(&attr, PTHREAD_CREATE_DETACHED);

    FUNC4(&thread, &attr, taosThreadToOpenNewFile, NULL);
    FUNC1(&attr);
  }

  FUNC6(&logMutex);

  return 0;
}