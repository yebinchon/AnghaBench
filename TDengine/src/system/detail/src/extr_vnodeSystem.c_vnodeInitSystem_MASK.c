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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 double tsNumOfCores ; 
 double tsNumOfThreadsPerCore ; 
 double tsRatioOfQueryThreads ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 

int FUNC9() {

  if (!FUNC4()) {
    FUNC0("failed to init query qhandle, exit");
    return -1;
  }

  if (!FUNC7()) {
    FUNC0("failed to init timer, exit");
    return -1;
  }

  if (FUNC6() < 0) {
    FUNC0("failed to init vnode storage");
    return -1;
  }

  int numOfThreads = (1.0 - tsRatioOfQueryThreads) * tsNumOfCores * tsNumOfThreadsPerCore / 2.0;
  if (numOfThreads < 1) numOfThreads = 1;
  if (FUNC3(numOfThreads) < 0) {
    FUNC0("failed to init vnode peer communication");
    return -1;
  }

  if (FUNC2() < 0) {
    FUNC0("failed to init communication to mgmt");
    return -1;
  }

  if (FUNC5() < 0) {
    FUNC0("failed to init communication to shell");
    return -1;
  }

  if (FUNC8() < 0) {
    FUNC0("failed to init store");
    return -1;
  }

  FUNC1("vnode is initialized successfully");

  return 0;
}