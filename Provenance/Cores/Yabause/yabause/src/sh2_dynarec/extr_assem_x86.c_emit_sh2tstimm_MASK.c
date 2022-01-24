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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC7(int s, int imm, int sr, int temp)
{
  FUNC1(temp>=0);
  FUNC3(sr,1,sr);
  FUNC4(s,imm);
  //emit_addimm(sr,-1,temp);
  FUNC0("lea -1(%%%s),%%%s\n",regname[sr],regname[temp]);
  FUNC5(0x8D);
  FUNC6(1,sr,temp);
  FUNC5(0xFF);
  FUNC2(temp,sr);
}