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
 scalar_t__ CFLAG_SET ; 
 int DX ; 
 int DY ; 
 scalar_t__ FLAG_C ; 
 scalar_t__ FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 scalar_t__ FLAG_X ; 
 int FLAG_Z ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ NFLAG_SET ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
  uint* r_dst = &DX;
  uint src = DY;
  uint dst = *r_dst;
  uint res = FUNC1(dst) - FUNC1(src) - FUNC4();

/* FLAG_V = ~res; */ /* Undefined V behavior */
  FLAG_V = VFLAG_CLEAR;  /* Undefined in Motorola's M68000PM/AD rev.1 and safer to assume cleared. */

  if(res > 9)
    res -= 6;
  res += FUNC0(dst) - FUNC0(src);
  if(res > 0x99)
  {
    res += 0xa0;
    FLAG_X = FLAG_C = CFLAG_SET;
    FLAG_N = NFLAG_SET;  /* Undefined in Motorola's M68000PM/AD rev.1 and safer to follow carry. */
  }
  else
    FLAG_N = FLAG_X = FLAG_C = 0;

  res = FUNC2(res);

/* FLAG_V &= res; */ /* Undefined V behavior part II */
/* FLAG_N = NFLAG_8(res); */ /* Undefined N behavior */
  FLAG_Z |= res;

  *r_dst = FUNC3(*r_dst) | res;
}