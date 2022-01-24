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
	switch (opcode & 15)
	{
	case  0:
		FUNC0(buffer, "CMP/EQ  %s,%s", regname[Rm], regname[Rn]);
		break;
	case  1:
		FUNC0(buffer, "??????  %s,%s", regname[Rm], regname[Rn]);
		break;
	case  2:
		FUNC0(buffer, "CMP/HS  %s,%s", regname[Rm], regname[Rn]);
		break;
	case  3:
		FUNC0(buffer, "CMP/GE  %s,%s", regname[Rm], regname[Rn]);
		break;
	case  4:
		FUNC0(buffer, "DIV1    %s,%s", regname[Rm], regname[Rn]);
		break;
	case  5:
		FUNC0(buffer, "DMULU.L %s,%s", regname[Rm], regname[Rn]);
		break;
	case  6:
		FUNC0(buffer, "CMP/HI  %s,%s", regname[Rm], regname[Rn]);
		break;
	case  7:
		FUNC0(buffer, "CMP/GT  %s,%s", regname[Rm], regname[Rn]);
		break;
	case  8:
		FUNC0(buffer, "SUB     %s,%s", regname[Rm], regname[Rn]);
		break;
	case  9:
		FUNC0(buffer, "??????  %s,%s", regname[Rm], regname[Rn]);
		break;
	case 10:
		FUNC0(buffer, "SUBC    %s,%s", regname[Rm], regname[Rn]);
		break;
	case 11:
		FUNC0(buffer, "SUBV    %s,%s", regname[Rm], regname[Rn]);
		break;
	case 12:
		FUNC0(buffer, "ADD     %s,%s", regname[Rm], regname[Rn]);
		break;
	case 13:
		FUNC0(buffer, "DMULS.L %s,%s", regname[Rm], regname[Rn]);
		break;
	case 14:
		FUNC0(buffer, "ADDC    %s,%s", regname[Rm], regname[Rn]);
		break;
	case 15:
		FUNC0(buffer, "ADDV    %s,%s", regname[Rm], regname[Rn]);
		break;
	}
	return 0;
}