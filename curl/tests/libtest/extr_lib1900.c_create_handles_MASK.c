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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * handles ; 
 int num_handles ; 

__attribute__((used)) static int FUNC1(void)
{
  int i;

  for(i = 0; i < num_handles; i++) {
    handles[i] = FUNC0();
  }
  return 0;
}