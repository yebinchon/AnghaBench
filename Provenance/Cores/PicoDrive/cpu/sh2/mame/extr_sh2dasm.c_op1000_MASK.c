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
 int FUNC0 (int) ; 
 char** regname ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,...) ; 

__attribute__((used)) static UINT32 FUNC2(char *buffer, UINT32 pc, UINT16 opcode)
{
	switch((opcode >> 8) & 15)
	{
	case  0:
		FUNC1(buffer, "MOV.B   R0,@($%02X,%s)", (opcode & 15), regname[Rm]);
		break;
	case  1:
		FUNC1(buffer, "MOV.W   R0,@($%02X,%s)", (opcode & 15) * 2, regname[Rm]);
		break;
	case  4:
		FUNC1(buffer, "MOV.B   @($%02X,%s),R0", (opcode & 15), regname[Rm]);
		break;
	case  5:
		FUNC1(buffer, "MOV.W   @($%02X,%s),R0", (opcode & 15), regname[Rm]);
		break;
	case  8:
		FUNC1(buffer, "CMP/EQ  #$%02X,R0", (opcode & 0xff));
		break;
	case  9:
		FUNC1(buffer, "BT      $%08x", pc + FUNC0(opcode & 0xff) * 2 + 2);
		break;
	case 11:
		FUNC1(buffer, "BF      $%08x", pc + FUNC0(opcode & 0xff) * 2 + 2);
		break;
	case 13:
		FUNC1(buffer, "BTS     $%08x", pc + FUNC0(opcode & 0xff) * 2 + 2);
		break;
	case 15:
		FUNC1(buffer, "BFS     $%08x", pc + FUNC0(opcode & 0xff) * 2 + 2);
		break;
	default :
		FUNC1(buffer, "invalid $%04X", opcode);
	}
	return 0;
}