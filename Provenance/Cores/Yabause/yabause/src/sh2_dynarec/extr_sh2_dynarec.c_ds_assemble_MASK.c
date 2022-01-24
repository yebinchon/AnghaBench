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
struct regstat {int dummy; } ;

/* Variables and functions */
#define  ALU 145 
#define  CJUMP 144 
#define  COMPLEX 143 
#define  EXT 142 
#define  FLAGS 141 
#define  IMM8 140 
#define  LOAD 139 
#define  MOV 138 
#define  MULTDIV 137 
#define  PCREL 136 
#define  RJUMP 135 
#define  RMW 134 
#define  SHIFTIMM 133 
#define  SJUMP 132 
#define  STORE 131 
#define  SYSCALL 130 
#define  SYSTEM 129 
#define  UJUMP 128 
 int /*<<< orphan*/  FUNC0 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct regstat*) ; 
 int is_delayslot ; 
 int* itype ; 
 int /*<<< orphan*/  FUNC5 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC11 (int,struct regstat*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct regstat*) ; 

void FUNC13(int i,struct regstat *i_regs)
{
  is_delayslot=1;
  switch(itype[i]) {
    case ALU:
      FUNC0(i,i_regs);break;
    case IMM8:
      FUNC4(i,i_regs);break;
    case SHIFTIMM:
      FUNC11(i,i_regs);break;
    case LOAD:
      FUNC5(i,i_regs);break;
    case STORE:
      FUNC12(i,i_regs);break;
    case RMW:
      FUNC10(i,i_regs);break;
    case PCREL:
      FUNC8(i,i_regs);break;
    case MULTDIV:
      FUNC7(i,i_regs);break;
    case MOV:
      FUNC6(i,i_regs);break;
    case EXT:
      FUNC2(i,i_regs);break;
    case FLAGS:
      FUNC3(i,i_regs);break;
    case COMPLEX:
      FUNC1(i,i_regs);break;
    case SYSTEM:
    case SYSCALL:
    case UJUMP:
    case RJUMP:
    case CJUMP:
    case SJUMP:
      FUNC9("Jump in the delay slot.  This is probably a bug.\n");
  }
  is_delayslot=0;
}