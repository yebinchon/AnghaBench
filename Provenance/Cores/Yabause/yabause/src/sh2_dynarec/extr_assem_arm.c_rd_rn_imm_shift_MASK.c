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
 int /*<<< orphan*/  FUNC0 (int) ; 

u32 FUNC1(unsigned int rd, unsigned int rn, u32 imm, unsigned int shift)
{
  FUNC0(rd<16);
  FUNC0(rn<16);
  FUNC0(imm<256);
  FUNC0((shift&1)==0);
  return((rn<<16)|(rd<<12)|(((32-shift)&30)<<7)|imm);
}