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
 int CCREG ; 
 int /*<<< orphan*/  FP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dynarec_local ; 
 int /*<<< orphan*/  master_cc ; 
 scalar_t__ master_reg ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 
 scalar_t__ slave ; 
 int /*<<< orphan*/  slave_cc ; 
 scalar_t__ slave_reg ; 

void FUNC4(int r, int hr)
{
  int addr=(slave?(int)slave_reg:(int)master_reg)+(r<<2);
  if(r==CCREG) addr=slave?(int)&slave_cc:(int)&master_cc;
  u32 offset = addr-(u32)&dynarec_local;
  FUNC1(offset<4096);
  FUNC0("str %s,fp+%d\n",regname[hr],offset);
  FUNC2(0xe5800000|FUNC3(hr,FP,0)|offset);
}