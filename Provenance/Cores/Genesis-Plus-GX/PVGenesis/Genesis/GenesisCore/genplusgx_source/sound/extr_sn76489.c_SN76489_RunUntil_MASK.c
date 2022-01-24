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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int clocks)
{
  int i;

  /* Run noise first, since it might use current value of third tone frequency counter */
  FUNC0(clocks);

  /* Run tone channels */
  for (i=0; i<3; ++i)
  {
    FUNC1(i, clocks);
  }
}