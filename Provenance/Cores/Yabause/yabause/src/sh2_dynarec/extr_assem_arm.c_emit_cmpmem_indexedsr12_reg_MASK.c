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
 int /*<<< orphan*/  HOST_TEMPREG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC5(int base,int r,int imm)
{
  FUNC1(imm<128&&imm>=0);
  FUNC1(r>=0&&r<16);
  FUNC0("ldrb lr,%s,%s lsr #12\n",regname[base],regname[r]);
  FUNC3(0xe7d00000|FUNC4(HOST_TEMPREG,base,r)|0x620);
  FUNC2(HOST_TEMPREG,imm);
}