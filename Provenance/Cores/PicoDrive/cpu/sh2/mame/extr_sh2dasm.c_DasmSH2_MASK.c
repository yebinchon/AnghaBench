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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,unsigned int,int) ; 

unsigned FUNC16(char *buffer, unsigned pc, UINT16 opcode)
{
	UINT32 flags;

	pc += 2;

	switch((opcode >> 12) & 15)
	{
	case  0: flags = FUNC0(buffer,pc,opcode);	  break;
	case  1: flags = FUNC1(buffer,pc,opcode);	  break;
	case  2: flags = FUNC2(buffer,pc,opcode);	  break;
	case  3: flags = FUNC3(buffer,pc,opcode);	  break;
	case  4: flags = FUNC4(buffer,pc,opcode);	  break;
	case  5: flags = FUNC5(buffer,pc,opcode);	  break;
	case  6: flags = FUNC6(buffer,pc,opcode);	  break;
	case  7: flags = FUNC7(buffer,pc,opcode);	  break;
	case  8: flags = FUNC8(buffer,pc,opcode);	  break;
	case  9: flags = FUNC9(buffer,pc,opcode);	  break;
	case 10: flags = FUNC10(buffer,pc,opcode);	  break;
	case 11: flags = FUNC11(buffer,pc,opcode);	  break;
	case 12: flags = FUNC12(buffer,pc,opcode);	  break;
	case 13: flags = FUNC13(buffer,pc,opcode);	  break;
	case 14: flags = FUNC14(buffer,pc,opcode);	  break;
	default: flags = FUNC15(buffer,pc,opcode);	  break;
	}
	return 0;//2 | flags | DASMFLAG_SUPPORTED;
}