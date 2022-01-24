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
 void* AY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* DX ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 void* FLAG_Z ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,void*) ; 

__attribute__((used)) static void FUNC4(void)
{
  uint src = FUNC1(AY);
  uint dst = FUNC1(DX);
  uint res = dst - src;

  FLAG_N = FUNC2(res);
  FLAG_Z = FUNC1(res);
  FLAG_V = FUNC3(src, dst, res);
  FLAG_C = FUNC0(res);
}