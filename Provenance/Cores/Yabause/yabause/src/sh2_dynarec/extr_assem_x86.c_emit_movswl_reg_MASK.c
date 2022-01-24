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
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 scalar_t__* regname ; 

void FUNC3(int rs, int rt)
{
  FUNC0("movswl %%%s,%%%s\n",regname[rs]+1,regname[rt]);
  FUNC1(0x0F);
  FUNC1(0xBF);
  FUNC2(3,rs,rt);
}