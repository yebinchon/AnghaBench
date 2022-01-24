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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC6(int rs1,int rs2,int rt)
{
  if(rs1==rt) {
    FUNC0("sub %%%s,%%%s\n",regname[rs2],regname[rs1]);
    FUNC4(0x29);
    FUNC5(3,rs1,rs2);
  } else if(rs2==rt) {
    FUNC3(rs2,rs2);
    FUNC1(rs2,rs1,rs2);
  } else {
    FUNC2(rs1,rt);
    FUNC6(rt,rs2,rt);
  }
}