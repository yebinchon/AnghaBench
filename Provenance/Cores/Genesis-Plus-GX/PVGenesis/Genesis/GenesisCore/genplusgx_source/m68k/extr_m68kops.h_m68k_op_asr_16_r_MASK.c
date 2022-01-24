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
 int CFLAG_SET ; 
 int CYC_SHIFT ; 
 int DX ; 
 int DY ; 
 int FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_X ; 
 int FLAG_Z ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  NFLAG_CLEAR ; 
 int /*<<< orphan*/  NFLAG_SET ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int XFLAG_CLEAR ; 
 int XFLAG_SET ; 
 int ZFLAG_CLEAR ; 
 int ZFLAG_SET ; 
 int* m68ki_shift_16_table ; 

__attribute__((used)) static void FUNC5(void)
{
  uint* r_dst = &DY;
  uint shift = DX & 0x3f;
  uint src = FUNC1(*r_dst);
  uint res = src >> shift;

  if(shift != 0)
  {
    FUNC4(shift * CYC_SHIFT);

    if(shift < 16)
    {
      if(FUNC0(src))
        res |= m68ki_shift_16_table[shift];

      *r_dst = FUNC2(*r_dst) | res;

      FLAG_C = FLAG_X = (src >> (shift - 1))<<8;
      FLAG_N = FUNC3(res);
      FLAG_Z = res;
      FLAG_V = VFLAG_CLEAR;
      return;
    }

    if(FUNC0(src))
    {
      *r_dst |= 0xffff;
      FLAG_C = CFLAG_SET;
      FLAG_X = XFLAG_SET;
      FLAG_N = NFLAG_SET;
      FLAG_Z = ZFLAG_CLEAR;
      FLAG_V = VFLAG_CLEAR;
      return;
    }

    *r_dst &= 0xffff0000;
    FLAG_C = CFLAG_CLEAR;
    FLAG_X = XFLAG_CLEAR;
    FLAG_N = NFLAG_CLEAR;
    FLAG_Z = ZFLAG_SET;
    FLAG_V = VFLAG_CLEAR;
    return;
  }

  FLAG_C = CFLAG_CLEAR;
  FLAG_N = FUNC3(src);
  FLAG_Z = src;
  FLAG_V = VFLAG_CLEAR;
}