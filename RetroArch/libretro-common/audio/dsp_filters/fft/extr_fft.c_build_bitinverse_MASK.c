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
 unsigned int FUNC0 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned *bitinverse, unsigned size_log2)
{
   unsigned i;
   unsigned size = 1 << size_log2;
   for (i = 0; i < size; i++)
      bitinverse[i] = FUNC0(i, size_log2);
}