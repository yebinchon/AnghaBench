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
 size_t HOST_TEMPREG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int,size_t) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC6(int rt, int addr, int rs, int map, int temp)
{
  if(map<0) FUNC3(rt, addr, rs);
  else {
    if(addr==0) {
      FUNC2(map,2,HOST_TEMPREG);
      FUNC0("strh %s,%s+%s\n",regname[rt],regname[rs],regname[HOST_TEMPREG]);
      FUNC4(0xe18000b0|FUNC5(rt,rs,HOST_TEMPREG));
    }else{
      FUNC1(addr==0);
    }
  }
}