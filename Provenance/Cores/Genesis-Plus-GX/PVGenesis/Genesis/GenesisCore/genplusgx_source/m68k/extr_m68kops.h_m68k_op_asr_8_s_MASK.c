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
typedef  size_t uint ;

/* Variables and functions */
 size_t CYC_SHIFT ; 
 size_t DY ; 
 size_t FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 size_t FLAG_X ; 
 size_t FLAG_Z ; 
 scalar_t__ FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int REG_IR ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 size_t* m68ki_shift_8_table ; 

__attribute__((used)) static void FUNC5(void)
{
  uint* r_dst = &DY;
  uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
  uint src = FUNC1(*r_dst);
  uint res = src >> shift;

  if(shift != 0)
    FUNC4(shift * CYC_SHIFT);

  if(FUNC0(src))
    res |= m68ki_shift_8_table[shift];

  *r_dst = FUNC2(*r_dst) | res;

  FLAG_N = FUNC3(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  FLAG_X = FLAG_C = src << (9-shift);
}