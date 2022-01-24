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
 size_t Rn ; 
 char** regname ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,char*,int) ; 

__attribute__((used)) static UINT32 FUNC1(char *buffer, UINT32 pc, UINT16 opcode)
{
	FUNC0(buffer, "MOV.W   @($%02X,PC),%s  ; @$%08x", (opcode & 0xff) * 2, regname[Rn],
		pc + (opcode & 0xff) * 2 + 2);
	return 0;
}