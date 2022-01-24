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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (int)) ; 
 int /*<<< orphan*/  taosProcessAlarmSignal ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(void (*callback)(int), int ms) {
  pthread_t      thread;
  pthread_attr_t tattr;
  FUNC1(&tattr);
  FUNC2(&tattr, PTHREAD_CREATE_DETACHED);
  if (FUNC3(&thread, &tattr, taosProcessAlarmSignal, callback) != 0) {
    FUNC4("failed to create timer thread");
    return -1;
  }

  FUNC0(&tattr);
  return 0;
}