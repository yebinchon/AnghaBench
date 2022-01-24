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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC7(int s1, int s2, int sr, int temp) {
  FUNC3(sr,24,sr);
  FUNC2(s2,temp);
  FUNC0("bt %%%s,31\n",regname[s2]);
  FUNC5(0x0f);
  FUNC5(0xba);
  FUNC6(3,s2,4);
  FUNC5(0x1f);
  FUNC0("rcr %%%s\n",regname[sr]);
  FUNC5(0xD1);
  FUNC6(3,sr,3);
  FUNC4(temp,s1,temp);
  FUNC0("bt %%%s,31\n",regname[s1]);
  FUNC5(0x0f);
  FUNC5(0xba);
  FUNC6(3,s1,4);
  FUNC5(0x1f);
  FUNC0("rcr %%%s,24\n",regname[sr]);
  FUNC5(0xc1);
  FUNC6(3,sr,3);
  FUNC5(24);
  FUNC0("bt %%%s,31\n",regname[temp]);
  FUNC5(0x0f);
  FUNC5(0xba);
  FUNC6(3,temp,4);
  FUNC5(0x1f);
  FUNC1(sr,sr);
}