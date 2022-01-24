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
 int FUNC0 () ; 
 int FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_X ; 
 int FLAG_Z ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(void)
{
  uint ea = FUNC0();
  uint src = FUNC3(ea);
  uint res = src >> 1;

  if(FUNC1(src))
    res |= 0x8000;

  FUNC4(ea, res);

  FLAG_N = FUNC2(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = FLAG_X = src << 8;
}