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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DY ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int FLAG_V ; 
 int /*<<< orphan*/  FLAG_X ; 
 int FLAG_Z ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
  uint* r_dst = &DY;
  uint res = 0 - FUNC1(*r_dst) - FUNC4();

  FLAG_N = FUNC3(res);
  FLAG_X = FLAG_C = FUNC0(res);
  FLAG_V = (*r_dst & res)>>8;

  res = FUNC1(res);
  FLAG_Z |= res;

  *r_dst = FUNC2(*r_dst) | res;
}