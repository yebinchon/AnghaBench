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
typedef  void* uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* DX ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int /*<<< orphan*/  FLAG_X ; 
 void* FLAG_Z ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,void*) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*) ; 

__attribute__((used)) static void FUNC7(void)
{
  uint ea = FUNC1();
  uint src = FUNC2(DX);
  uint dst = FUNC5(ea);
  uint res = dst - src;

  FLAG_N = FUNC3(res);
  FLAG_Z = FUNC2(res);
  FLAG_X = FLAG_C = FUNC0(res);
  FLAG_V = FUNC4(src, dst, res);

  FUNC6(ea, FLAG_Z);
}