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
 unsigned char FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static unsigned char FUNC2(int a, int b, int c)
{
   int p = a + b - c, pa = FUNC1(p-a), pb = FUNC1(p-b), pc = FUNC1(p-c);
   if (pa <= pb && pa <= pc) return FUNC0(a);
   if (pb <= pc) return FUNC0(b);
   return FUNC0(c);
}