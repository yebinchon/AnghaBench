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
 int /*<<< orphan*/  FUNC2 (int) ; 
 int REG_IR ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
  uint* r_dst = &DY;
  uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
  uint src = FUNC0(*r_dst);
  uint res = FUNC3(src | (FUNC5() << 8), shift);

  if(shift != 0)
    FUNC4(shift * CYC_SHIFT);

  FLAG_C = FLAG_X = res;
  res = FUNC0(res);

  *r_dst = FUNC1(*r_dst) | res;

  FLAG_N = FUNC2(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
}