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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int DY ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int FLAG_V ; 
 int /*<<< orphan*/  FLAG_X ; 
 int FLAG_Z ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
  uint* r_dst = &DY;
  uint res = 0 - *r_dst;

  FLAG_N = FUNC2(res);
  FLAG_C = FLAG_X = FUNC0(*r_dst, 0, res);
  FLAG_V = (*r_dst & res)>>24;
  FLAG_Z = FUNC1(res);

  *r_dst = FLAG_Z;
}