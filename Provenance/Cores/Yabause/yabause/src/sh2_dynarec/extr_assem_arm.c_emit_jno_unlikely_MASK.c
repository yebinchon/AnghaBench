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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 

void FUNC3(int a)
{
  //emit_jno(a);
  FUNC0("addvc pc,pc,#? (%x)\n",/*a-(int)out-8,*/a);
  FUNC1(0x72800000|FUNC2(15,15,0));
}