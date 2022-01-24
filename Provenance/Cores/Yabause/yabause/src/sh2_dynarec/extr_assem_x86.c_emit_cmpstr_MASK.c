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
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 

void FUNC11(int s1, int s2, int sr, int temp)
{
  // Compare s1 and s2.  If any byte is equal, set T.
  // Calculates the xor of the strings, then checks if any byte is
  // zero by subtracting 1 from each byte.  If there is a carry/borrow
  // then a byte was zero.
  FUNC0(temp>=0);
  FUNC8(s2);
  FUNC10(s1,s2,s2);
  FUNC9(sr,1,sr);
  FUNC5(s2,temp);
  FUNC3(0-0x01010101,temp);
  FUNC2(-1,temp);
  FUNC6(s2,s2);
  FUNC10(temp,s2,temp);
  FUNC4(temp,0x01010101,temp);
  FUNC3(-1,temp);
  FUNC1(sr,sr);
  FUNC7(s2);
}