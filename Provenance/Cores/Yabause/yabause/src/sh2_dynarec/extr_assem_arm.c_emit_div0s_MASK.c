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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(int s1, int s2, int sr, int temp) {
  FUNC0(sr,0xfe,sr);
  FUNC4(s2,0x80000000);
  FUNC2(sr,0x100,sr);
  FUNC4(s1,0x80000000);
  FUNC2(sr,0x200,sr);
  FUNC3(s1,s2);
  FUNC1(sr,1,sr);
}