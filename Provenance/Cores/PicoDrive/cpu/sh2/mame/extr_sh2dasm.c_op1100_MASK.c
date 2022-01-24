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
 int /*<<< orphan*/  DASMFLAG_STEP_OVER ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,...) ; 

__attribute__((used)) static UINT32 FUNC1(char *buffer, UINT32 pc, UINT16 opcode)
{
	UINT32 flags = 0;
	switch((opcode >> 8) & 15)
	{
	case  0:
		FUNC0(buffer, "MOV.B   R0,@($%02X,GBR)", opcode & 0xff);
		break;
	case  1:
		FUNC0(buffer, "MOV.W   R0,@($%04X,GBR)", (opcode & 0xff) * 2);
		break;
	case  2:
		FUNC0(buffer, "MOV.L   R0,@($%04X,GBR)", (opcode & 0xff) * 4);
		break;
	case  3:
		FUNC0(buffer, "TRAPA   #$%02X", opcode & 0xff);
		flags = DASMFLAG_STEP_OVER;
		break;
	case  4:
		FUNC0(buffer, "MOV.B   @($%02X,GBR),R0", opcode & 0xff);
		break;
	case  5:
		FUNC0(buffer, "MOV.W   @($%04X,GBR),R0", (opcode & 0xff) * 2);
		break;
	case  6:
		FUNC0(buffer, "MOV.L   @($%04X,GBR),R0", (opcode & 0xff) * 4);
		break;
	case  7:
		FUNC0(buffer, "MOVA    @($%04X,PC),R0  ; @$%08x", (opcode & 0xff) * 4,
			((pc + 2) & ~3) + (opcode & 0xff) * 4);
		break;
	case  8:
		FUNC0(buffer, "TST     #$%02X,R0", opcode & 0xff);
		break;
	case  9:
		FUNC0(buffer, "AND     #$%02X,R0", opcode & 0xff);
		break;
	case 10:
		FUNC0(buffer, "XOR     #$%02X,R0", opcode & 0xff);
		break;
	case 11:
		FUNC0(buffer, "OR      #$%02X,R0", opcode & 0xff);
		break;
	case 12:
		FUNC0(buffer, "TST.B   #$%02X,@(R0,GBR)", opcode & 0xff);
		break;
	case 13:
		FUNC0(buffer, "AND.B   #$%02X,@(R0,GBR)", opcode & 0xff);
		break;
	case 14:
		FUNC0(buffer, "XOR.B   #$%02X,@(R0,GBR)", opcode & 0xff);
		break;
	case 15:
		FUNC0(buffer, "OR.B    #$%02X,@(R0,GBR)", opcode & 0xff);
		break;
	}
	return flags;
}