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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(int offset, int rs, int rt)
{
  FUNC1(offset>-4096&&offset<4096);
  FUNC0("ldr %s,%s+%d\n",regname[rt],regname[rs],offset);
  if(offset>=0) {
    FUNC2(0xe5900000|FUNC3(rt,rs,0)|offset);
  }else{
    FUNC2(0xe5100000|FUNC3(rt,rs,0)|(-offset));
  }
}