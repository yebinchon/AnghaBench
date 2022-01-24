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
typedef  int uint ;

/* Variables and functions */
 int FUNC0 () ; 
 int FLAG_Z ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(void)
{
  uint mask = 1 << (FUNC1() & 7);
  uint ea = FUNC0();
  uint src = FUNC2(ea);

  FLAG_Z = src & mask;
  FUNC3(ea, src | mask);
}