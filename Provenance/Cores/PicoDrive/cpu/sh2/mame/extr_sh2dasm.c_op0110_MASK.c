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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int UINT16 ;

/* Variables and functions */
 size_t Rm ; 
 size_t Rn ; 
 char** regname ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 

__attribute__((used)) static UINT32 FUNC1(char *buffer, UINT32 pc, UINT16 opcode)

{
	switch(opcode & 0xF)
	{
	case 0x00:
		FUNC0(buffer, "MOV.B   @%s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x01:
		FUNC0(buffer, "MOV.W   @%s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x02:
		FUNC0(buffer, "MOV.L   @%s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x03:
		FUNC0(buffer, "MOV     %s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x04:
		FUNC0(buffer, "MOV.B   @%s+,%s", regname[Rm], regname[Rn]);
		break;
	case 0x05:
		FUNC0(buffer, "MOV.W   @%s+,%s", regname[Rm], regname[Rn]);
		break;
	case 0x06:
		FUNC0(buffer, "MOV.L   @%s+,%s", regname[Rm], regname[Rn]);
		break;
	case 0x07:
		FUNC0(buffer, "NOT     %s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x08:
		FUNC0(buffer, "SWAP.B  %s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x09:
		FUNC0(buffer, "SWAP.W  %s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x0a:
		FUNC0(buffer, "NEGC    %s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x0b:
		FUNC0(buffer, "NEG     %s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x0c:
		FUNC0(buffer, "EXTU.B  %s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x0d:
		FUNC0(buffer, "EXTU.W  %s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x0e:
		FUNC0(buffer, "EXTS.B  %s,%s", regname[Rm], regname[Rn]);
		break;
	case 0x0f:
		FUNC0(buffer, "EXTS.W  %s,%s", regname[Rm], regname[Rn]);
		break;
	}
	return 0;
}