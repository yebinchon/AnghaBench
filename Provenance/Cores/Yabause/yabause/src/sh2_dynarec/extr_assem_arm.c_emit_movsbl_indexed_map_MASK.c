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
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC6(int addr, int rs, int map, int rt)
{
  if(map<0) FUNC2(addr, rs, rt);
  else {
    if(addr==0) {
      FUNC3(map,2,HOST_TEMPREG);
      FUNC0("ldrsb %s,%s+%s\n",regname[rt],regname[rs],regname[HOST_TEMPREG]);
      FUNC4(0xe19000d0|FUNC5(rt,rs,HOST_TEMPREG));
    }else{
      FUNC1(addr>-256&&addr<256);
      FUNC0("add %s,%s,%s,lsl #2\n",regname[rt],regname[rs],regname[map]);
      FUNC4(0xe0800000|FUNC5(rt,rs,map)|(2<<7));
      FUNC2(addr, rt, rt);
    }
  }
}