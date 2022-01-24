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
 int CFLAG_CLEAR ; 
 int CYC_SHIFT ; 
 int DX ; 
 int DY ; 
 int FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_Z ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 

__attribute__((used)) static void FUNC5(void)
{
  uint* r_dst = &DY;
  uint orig_shift = DX & 0x3f;
  uint shift = orig_shift & 15;
  uint src = FUNC0(*r_dst);
  uint res = FUNC3(src, shift);

  if(orig_shift != 0)
  {
    FUNC4(orig_shift * CYC_SHIFT);

    *r_dst = FUNC1(*r_dst) | res;
    FLAG_C = (src >> ((shift - 1) & 15)) << 8;
    FLAG_N = FUNC2(res);
    FLAG_Z = res;
    FLAG_V = VFLAG_CLEAR;
    return;
  }

  FLAG_C = CFLAG_CLEAR;
  FLAG_N = FUNC2(src);
  FLAG_Z = src;
  FLAG_V = VFLAG_CLEAR;
}