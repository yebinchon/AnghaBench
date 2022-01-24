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
 int /*<<< orphan*/  DASMFLAG_STEP_OUT ; 
 size_t Rm ; 
 size_t Rn ; 
 char** regname ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static UINT32 FUNC1(char *buffer, UINT32 pc, UINT16 opcode)
{
	UINT32  flags = 0;
	switch(opcode & 0x3f)
	{
	case 0x02:
		FUNC0(buffer,"STC     SR,%s", regname[Rn]);
		break;
	case 0x03:
		FUNC0(buffer,"BSRF    %s", regname[Rn]);
		break;
	case 0x08:
		FUNC0(buffer,"CLRT");
		break;
	case 0x09:
		FUNC0(buffer,"NOP");
		break;
	case 0x0A:
		FUNC0(buffer,"STS     MACH,%s", regname[Rn]);
		break;
	case 0x0B:
		FUNC0(buffer,"RTS");
		flags = DASMFLAG_STEP_OUT;
		break;
	case 0x12:
		FUNC0(buffer,"STS     GBR,%s", regname[Rn]);
		break;
	case 0x18:
		FUNC0(buffer,"SETT");
		break;
	case 0x19:
		FUNC0(buffer,"DIV0U");
		break;
	case 0x1A:
		FUNC0(buffer,"STS     MACL,%s", regname[Rn]);
		break;
	case 0x1B:
		FUNC0(buffer,"SLEEP");
		break;
	case 0x22:
		FUNC0(buffer,"STC     VBR,%s", regname[Rn]);
		break;
	case 0x23:
		FUNC0(buffer,"BRAF    %s", regname[Rn]);
		break;
	case 0x28:
		FUNC0(buffer,"CLRMAC");
		break;
	case 0x29:
		FUNC0(buffer,"MOVT    %s", regname[Rn]);
		break;
	case 0x2A:
		FUNC0(buffer,"STS     PR,%s", regname[Rn]);
		break;
	case 0x2B:
		FUNC0(buffer,"RTE");
		flags = DASMFLAG_STEP_OUT;
		break;
	default:
		switch(opcode & 15)
		{
		case  0:
			FUNC0(buffer, "??????  $%04X", opcode);
			break;
		case  1:
			FUNC0(buffer, "??????  $%04X", opcode);
			break;
		case  2:
			FUNC0(buffer, "??????  $%04X", opcode);
			break;
		case  3:
			FUNC0(buffer, "??????  $%04X", opcode);
			break;
		case  4:
			FUNC0(buffer, "MOV.B   %s,@(R0,%s)", regname[Rm], regname[Rn]);
			break;
		case  5:
			FUNC0(buffer, "MOV.W   %s,@(R0,%s)", regname[Rm], regname[Rn]);
			break;
		case  6:
			FUNC0(buffer, "MOV.L   %s,@(R0,%s)", regname[Rm], regname[Rn]);
			break;
		case  7:
			FUNC0(buffer, "MUL.L   %s,%s", regname[Rm], regname[Rn]);
			break;
		case  8:
			FUNC0(buffer, "??????  $%04X", opcode);
			break;
		case  9:
			FUNC0(buffer, "??????  $%04X", opcode);
			break;
		case 10:
			FUNC0(buffer, "??????  $%04X", opcode);
			break;
		case 11:
			FUNC0(buffer, "??????  $%04X", opcode);
			break;
		case 12:
			FUNC0(buffer, "MOV.B   @(R0,%s),%s", regname[Rm], regname[Rn]);
			break;
		case 13:
			FUNC0(buffer, "MOV.W   @(R0,%s),%s", regname[Rm], regname[Rn]);
			break;
		case 14:
			FUNC0(buffer, "MOV.L   @(R0,%s),%s", regname[Rm], regname[Rn]);
			break;
		case 15:
			FUNC0(buffer, "MAC.L   @%s+,@%s+", regname[Rn], regname[Rm]);
			break;
		}
	}
	return flags;
}