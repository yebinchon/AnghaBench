#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_attr_t ;
struct TYPE_3__ {int /*<<< orphan*/  asyncThread; } ;

/* Variables and functions */
 TYPE_1__* logHandle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  taosAsyncOutputLog ; 

int FUNC3() {
  pthread_attr_t threadAttr;

  FUNC1(&threadAttr);

  if (FUNC2(&(logHandle->asyncThread), &threadAttr, taosAsyncOutputLog, logHandle) != 0) {
    return -1;
  }

  FUNC0(&threadAttr);

  return 0;
}