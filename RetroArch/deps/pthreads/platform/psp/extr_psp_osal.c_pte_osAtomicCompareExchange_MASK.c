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
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(int *pdest, int exchange, int comp)
{
   int intc    = FUNC0();
   int origVal = *pdest;

   if (*pdest == comp)
      *pdest = exchange;

   FUNC1(intc);

   return origVal;
}