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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC3(u32 imm,unsigned int rt)
{
  FUNC0("movt %s,#%d (0x%x)\n",regname[rt],imm&0xffff0000,imm&0xffff0000);
  FUNC1(0xe3400000|FUNC2(rt,0,0)|((imm>>16)&0xfff)|((imm>>12)&0xf0000));
}