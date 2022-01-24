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
 intptr_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3(void *addr, unsigned size)
{
   const intptr_t offset = (intptr_t)addr % PAGE_SIZE;
   addr = (char *)addr - offset;
   size = size + offset;
   int s = FUNC1(addr, size);
   if (s != 0) {
      FUNC2("munmap error %d\n", s);
      FUNC0 (-1);
   }
}