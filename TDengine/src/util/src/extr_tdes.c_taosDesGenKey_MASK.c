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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int64_t FUNC3() {
  unsigned int iseed = (unsigned int)FUNC2(NULL);
  FUNC1(iseed);

  unsigned char key[8] = {0};
  FUNC0(key);

  return *((int64_t*)key);
}