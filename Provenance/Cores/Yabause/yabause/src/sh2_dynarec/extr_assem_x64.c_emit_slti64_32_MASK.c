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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  const_one ; 
 int /*<<< orphan*/  const_zero ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

void FUNC7(int rsh,int rsl,int imm,int rt)
{
  FUNC0(rsh!=rt);
  FUNC5(rsl,imm,rt);
  if(imm>=0)
  {
    FUNC6(rsh,rsh);
    FUNC2(&const_zero,rt);
    FUNC3(&const_one,rt);
  }
  else
  {
    FUNC4(rsh,-1);
    FUNC2(&const_zero,rt);
    FUNC1(&const_one,rt);
  }
}