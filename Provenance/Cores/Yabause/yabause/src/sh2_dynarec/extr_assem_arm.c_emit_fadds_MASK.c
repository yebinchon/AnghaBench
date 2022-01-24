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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(int s1,int s2,int d)
{
  FUNC0("fadds s%d,s%d,s%d\n",d,s1,s2);
  FUNC1(0xee300a00|((d&14)<<11)|((d&1)<<22)|((s1&14)<<15)|((s1&1)<<7)|((s2&14)>>1)|((s2&1)<<5));
}