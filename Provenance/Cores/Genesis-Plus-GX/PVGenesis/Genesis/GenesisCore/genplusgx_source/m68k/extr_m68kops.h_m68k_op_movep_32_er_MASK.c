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
typedef  scalar_t__ uint ;

/* Variables and functions */
 int DX ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(void)
{
  uint ea = FUNC0();

  DX = (FUNC1(ea) << 24) + (FUNC1(ea + 2) << 16)
    + (FUNC1(ea + 4) << 8) + FUNC1(ea + 6);
}