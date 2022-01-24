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
 int EBP ; 
 int ESP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC8(int addr, int map, int sr)
{
  FUNC4(sr,1,sr);
  if(map<0) {
    FUNC0("cmpb $1,(%%%s)\n",regname[addr]);
    FUNC1(addr!=ESP);
    FUNC5(0x80);
    FUNC6(0,addr,7);
  }
  else
  {
    FUNC0("cmpb $1,(%%%s,%%%s,1)\n",regname[addr],regname[map]);
    FUNC1(addr!=ESP);
    FUNC5(0x80);
    FUNC6(0,4,7);
    if(addr!=EBP) {
      FUNC7(0,map,addr);
    }
    else {
      FUNC1(addr!=map);
      FUNC7(0,addr,map);
    }
  }
  FUNC5(1);
  FUNC2(sr,sr);
  FUNC3(addr,map,0x80);
}