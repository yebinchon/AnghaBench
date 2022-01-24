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
typedef  int UINT32 ;
typedef  int UINT16 ;

/* Variables and functions */
 int DASMFLAG_STEP_OVER ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static UINT32 FUNC3(char *buffer, UINT32 pc, UINT16 opcode)
{
	FUNC2(buffer, "BSR     $%08x", FUNC1(opcode & 0xfff) * 2 + pc + 2);
	return DASMFLAG_STEP_OVER | FUNC0(1);
}