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
#define  ALU 144 
#define  CJUMP 143 
#define  COMPLEX 142 
#define  EXT 141 
#define  FLAGS 140 
#define  IMM8 139 
#define  LOAD 138 
#define  MOV 137 
#define  MULTDIV 136 
#define  PCREL 135 
#define  RJUMP 134 
#define  RMW 133 
#define  SHIFTIMM 132 
#define  SJUMP 131 
#define  STORE 130 
#define  SYSCALL 129 
#define  UJUMP 128 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct regstat*,int) ; 
 int* itype ; 
 int /*<<< orphan*/  FUNC6 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct regstat*,int) ; 
 int stop_after_jal ; 
 int /*<<< orphan*/  FUNC13 (struct regstat*,int) ; 

void FUNC14(struct regstat *current,int i)
{
  switch(itype[i]) {
    case UJUMP:
    case CJUMP:
    case SJUMP:
    case RJUMP:
    case SYSCALL:
      FUNC1("jump in the delay slot.  this shouldn't happen.\n");//exit(1);
      FUNC10("Disabled speculative precompilation\n");
      stop_after_jal=1;
      break;
    case IMM8:
      FUNC5(current,i);
      break;
    case LOAD:
      FUNC6(current,i);
      break;
    case STORE:
      FUNC13(current,i);
      break;
    case RMW:
      FUNC11(current,i);
      break;
    case PCREL:
      FUNC9(current,i);
      break;
    case ALU:
      FUNC0(current,i);
      break;
    case MULTDIV:
      FUNC8(current,i);
      break;
    case SHIFTIMM:
      FUNC12(current,i);
      break;
    case MOV:
      FUNC7(current,i);
      break;
    case EXT:
      FUNC3(current,i);
      break;
    case FLAGS:
      FUNC4(current,i);
      break;
    case COMPLEX:
      FUNC2(current,i);
      break;
  }
}