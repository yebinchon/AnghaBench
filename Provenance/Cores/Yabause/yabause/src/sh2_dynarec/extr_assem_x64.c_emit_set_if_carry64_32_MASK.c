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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(int u1, int l1, int u2, int l2, int rt)
{
  //assem_debug("set if carry64 (%%%s,%%%s,%%%s,%%%s),%%%s\n",regname[u1],regname[l1],regname[u2],regname[l2],regname[rt]);
  FUNC0(u1!=rt);
  FUNC0(u2!=rt);
  FUNC2(l1,l2);
  FUNC3(u1,rt);
  FUNC5(u2,rt);
  FUNC4(0,rt);
  FUNC1(0,rt);
}