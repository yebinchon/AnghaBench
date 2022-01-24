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
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 

void FUNC4(int s1, int s2, int sr, int temp)
{
  // Compare s1 and s2.  If any byte is equal, set T.
  // Calculates the xor of the strings, then checks if any byte is zero
  FUNC3(s1,s2,14);
  FUNC0(sr,~1,sr);
  FUNC2(14,0xFF);
  FUNC1(sr,1,sr);
  FUNC2(14,0xFF00);
  FUNC1(sr,1,sr);
  FUNC2(14,0xFF0000);
  FUNC1(sr,1,sr);
  FUNC2(14,0xFF000000);
  FUNC1(sr,1,sr);
  // Compare s1 and s2.  If any byte is equal, set T.
  // Calculates the xor of the strings, then checks if any byte is
  // zero by subtracting 1 from each byte.  If there is a carry/borrow
  // then a byte was zero.
  //assert(temp>=0);
  //emit_xor(s1,s2,s2);
  //emit_movimm(0x01010101,14);
  //emit_andimm(sr,~1,sr);
  //emit_subs(s2,14,temp);
  //emit_sbcimm(temp,0,temp);
  //emit_xor(temp,s2,temp);
  //emit_not(temp,temp);
  //emit_testimm(temp,14);
  //emit_xor(s1,s2,s2);
  //emit_orrne_imm(sr,1,sr);
}