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
typedef  int /*<<< orphan*/ * dispatch_semaphore_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned int) ; 

int FUNC1(dispatch_semaphore_t *sem, int pshared, unsigned int value) {
  *sem = FUNC0(value);
  if (*sem == NULL) {
    return -1;
  } else {
    return 0;
  }
}