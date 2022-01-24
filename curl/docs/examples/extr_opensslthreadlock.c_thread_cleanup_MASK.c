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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * mutex_buf ; 

int FUNC5(void)
{
  int i;

  if(!mutex_buf)
    return 0;
  FUNC1(NULL);
  FUNC2(NULL);
  for(i = 0;  i < FUNC0();  i++)
    FUNC3(mutex_buf[i]);
  FUNC4(mutex_buf);
  mutex_buf = NULL;
  return 1;
}