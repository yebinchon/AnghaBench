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
 void* FUNC0 (size_t) ; 
 void* FUNC1 (size_t) ; 

__attribute__ ((used)) void *FUNC2(size_t size)
{
   void *p = FUNC0(size);
   if (p != 0)
      return p;
   return FUNC1(size);
}