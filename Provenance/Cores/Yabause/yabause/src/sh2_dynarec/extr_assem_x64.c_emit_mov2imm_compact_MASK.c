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
 int /*<<< orphan*/  FUNC0 (unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 

void FUNC2(int imm1,unsigned int rt1,int imm2,unsigned int rt2)
{
  FUNC1(imm1,rt1);
  if(imm2-imm1<128&&imm2-imm1>=-128) FUNC0(rt1,imm2-imm1,rt2);
  else FUNC1(imm2,rt2);
}