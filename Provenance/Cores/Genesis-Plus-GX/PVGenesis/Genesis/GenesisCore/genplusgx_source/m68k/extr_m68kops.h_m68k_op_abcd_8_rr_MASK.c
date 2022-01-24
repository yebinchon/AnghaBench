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
 int DX ; 
 int DY ; 
 int FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int FLAG_V ; 
 int FLAG_X ; 
 int FLAG_Z ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
  uint* r_dst = &DX;
  uint src = DY;
  uint dst = *r_dst;
  uint res = FUNC1(src) + FUNC1(dst) + FUNC5();

  FLAG_V = ~res; /* Undefined V behavior */

  if(res > 9)
    res += 6;
  res += FUNC0(src) + FUNC0(dst);
  FLAG_X = FLAG_C = (res > 0x99) << 8;
  if(FLAG_C)
    res -= 0xa0;

  FLAG_V &= res; /* Undefined V behavior part II */
  FLAG_N = FUNC4(res); /* Undefined N behavior */

  res = FUNC2(res);
  FLAG_Z |= res;

  *r_dst = FUNC3(*r_dst) | res;
}