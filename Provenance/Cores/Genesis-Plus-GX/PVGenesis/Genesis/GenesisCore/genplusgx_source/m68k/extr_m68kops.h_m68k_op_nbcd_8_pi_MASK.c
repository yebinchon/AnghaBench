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
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 int /*<<< orphan*/  CFLAG_SET ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int FLAG_V ; 
 int /*<<< orphan*/  FLAG_X ; 
 int FLAG_Z ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int VFLAG_CLEAR ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  XFLAG_CLEAR ; 
 int /*<<< orphan*/  XFLAG_SET ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(void)
{
  uint ea = FUNC0();
  uint dst = FUNC4(ea);
  uint res = FUNC1(0x9a - dst - FUNC3());

  if(res != 0x9a)
  {
    FLAG_V = ~res; /* Undefined V behavior */

    if((res & 0x0f) == 0xa)
      res = (res & 0xf0) + 0x10;

    res = FUNC1(res);

    FLAG_V &= res; /* Undefined V behavior part II */

    FUNC5(ea, FUNC1(res));

    FLAG_Z |= res;
    FLAG_C = CFLAG_SET;
    FLAG_X = XFLAG_SET;
  }
  else
  {
    FLAG_V = VFLAG_CLEAR;
    FLAG_C = CFLAG_CLEAR;
    FLAG_X = XFLAG_CLEAR;
  }
  FLAG_N = FUNC2(res);  /* Undefined N behavior */
}