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
 int FUNC0 () ; 
 scalar_t__ FLAG_C ; 
 scalar_t__ FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 scalar_t__ FLAG_X ; 
 int FLAG_Z ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ NFLAG_SET ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int FUNC5 () ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(void)
{
  uint src = FUNC4();
  uint ea  = FUNC0();
  uint dst = FUNC6(ea);
  uint res = FUNC2(dst) - FUNC2(src) - FUNC5();

/* FLAG_V = ~res; */ /* Undefined V behavior */
  FLAG_V = VFLAG_CLEAR;  /* Undefined in Motorola's M68000PM/AD rev.1 and safer to return zero. */

  if(res > 9)
    res -= 6;
  res += FUNC1(dst) - FUNC1(src);
  if(res > 0x99)
  {
    res += 0xa0;
    FLAG_X = FLAG_C = CFLAG_SET;
    FLAG_N = NFLAG_SET;  /* Undefined in Motorola's M68000PM/AD rev.1 and safer to follow carry. */
  }
  else
    FLAG_N = FLAG_X = FLAG_C = 0;

  res = FUNC3(res);

/* FLAG_V &= res; */ /* Undefined V behavior part II */
/* FLAG_N = NFLAG_8(res); */ /* Undefined N behavior */
  FLAG_Z |= res;

  FUNC7(ea, res);
}