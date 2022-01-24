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
 int CYC_SHIFT ; 
 int DY ; 
 int FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_X ; 
 int FLAG_Z ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  NFLAG_CLEAR ; 
 int REG_IR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 

__attribute__((used)) static void FUNC3(void)
{
  uint* r_dst = &DY;
  uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
  uint src = FUNC0(*r_dst);
  uint res = src >> shift;

  if(shift != 0)
    FUNC2(shift * CYC_SHIFT);

  *r_dst = FUNC1(*r_dst) | res;

  FLAG_N = NFLAG_CLEAR;
  FLAG_Z = res;
  FLAG_X = FLAG_C = src << (9-shift);
  FLAG_V = VFLAG_CLEAR;
}