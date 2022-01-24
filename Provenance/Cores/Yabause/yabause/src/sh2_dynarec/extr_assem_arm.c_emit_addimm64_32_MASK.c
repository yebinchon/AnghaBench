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
 int /*<<< orphan*/  HOST_TEMPREG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(int rsh,int rsl,int imm,int rth,int rtl)
{
  // TODO: if(genimm(imm,&armval)) ...
  // else
  FUNC2(imm,HOST_TEMPREG);
  FUNC1(HOST_TEMPREG,rsl,rtl);
  FUNC0(rsh,0,rth);
}