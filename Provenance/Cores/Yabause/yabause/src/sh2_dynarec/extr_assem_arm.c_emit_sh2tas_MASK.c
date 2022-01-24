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
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 

void FUNC7(int addr, int map, int sr)
{
  if(map<0) {
    FUNC0(map>=0);
  }
  else
  {
    FUNC2(addr, map, 14);
    FUNC1(sr,~1,sr);
    FUNC5(14,0xff);
    FUNC3(14,0x80,14);
    FUNC4(sr,1,sr);
    FUNC6(14, addr, map);
  }
}