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

void FUNC4(int rt, int offset, int rs)
{
  FUNC1(offset>-256&&offset<256);
  FUNC0("strh %s,%s+%d\n",regname[rt],regname[rs],offset);
  if(offset>=0) {
    FUNC2(0xe1c000b0|FUNC3(rt,rs,0)|((offset<<4)&0xf00)|(offset&0xf));
  }else{
    FUNC2(0xe14000b0|FUNC3(rt,rs,0)|(((-offset)<<4)&0xf00)|((-offset)&0xf));
  }
}