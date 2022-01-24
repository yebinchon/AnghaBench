#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pointer ;
struct TYPE_15__ {scalar_t__* regmap_entry; scalar_t__* regmap; int /*<<< orphan*/  dirty; int /*<<< orphan*/  wasdirty; } ;

/* Variables and functions */
#define  ALU 145 
 scalar_t__ CCREG ; 
#define  CJUMP 144 
#define  COMPLEX 143 
#define  EXT 142 
#define  FLAGS 141 
 size_t HOST_CCREG ; 
#define  IMM8 140 
#define  LOAD 139 
 int /*<<< orphan*/  MMREG ; 
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
 int /*<<< orphan*/  FUNC0 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int* ba ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_1__*) ; 
 scalar_t__* instr_addr ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ is_delayslot ; 
 int* itype ; 
 int /*<<< orphan*/  FUNC11 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int,TYPE_1__*) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC16 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 TYPE_1__* regs ; 
 int /*<<< orphan*/  FUNC18 (int,TYPE_1__*) ; 
 int /*<<< orphan*/ * rs1 ; 
 int /*<<< orphan*/ * rs2 ; 
 int /*<<< orphan*/ * rs3 ; 
 int /*<<< orphan*/  FUNC19 (int,TYPE_1__*) ; 
 int start ; 
 int /*<<< orphan*/  FUNC20 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 

void FUNC23(int i)
{
  int t=(ba[i]-start)>>1;
  if(!instr_addr[t]) instr_addr[t]=(pointer)out;
  FUNC3("Assemble delay slot at %x\n",ba[i]);
  FUNC3("<->\n");
  if(regs[t].regmap_entry[HOST_CCREG]==CCREG&&regs[t].regmap[HOST_CCREG]!=CCREG)
    FUNC22(CCREG,regs[t].regmap_entry,regs[t].wasdirty);
  FUNC12(regs[t].regmap_entry,regs[t].regmap,rs1[t],rs2[t],rs3[t]);
  FUNC1(t,&regs[t],regs[t].regmap_entry);
  if(itype[t]==LOAD||itype[t]==STORE)
    FUNC12(regs[t].regmap_entry,regs[t].regmap,MMREG,MMREG,MMREG);
  is_delayslot=0;
  switch(itype[t]) {
    case ALU:
      FUNC2(t,&regs[t]);break;
    case IMM8:
      FUNC9(t,&regs[t]);break;
    case SHIFTIMM:
      FUNC19(t,&regs[t]);break;
    case LOAD:
      FUNC11(t,&regs[t]);break;
    case STORE:
      FUNC20(t,&regs[t]);break;
    case RMW:
      FUNC18(t,&regs[t]);break;
    case PCREL:
      FUNC16(t,&regs[t]);break;
    case MULTDIV:
      FUNC15(t,&regs[t]);break;
    case MOV:
      FUNC14(t,&regs[t]);break;
    case EXT:
      FUNC7(i,&regs[t]);break;
    case FLAGS:
      FUNC8(i,&regs[t]);break;
    case COMPLEX:
      FUNC5(i,&regs[t]);break;
    case SYSTEM:
    case SYSCALL:
    case UJUMP:
    case RJUMP:
    case CJUMP:
    case SJUMP:
      FUNC17("Jump in the delay slot.  This is probably a bug.\n");
  }
  FUNC21(regs[t].regmap,regs[t].dirty,ba[i]+2);
  FUNC13(regs[t].regmap,regs[t].dirty,ba[i]+2);
  if(FUNC10(ba[i]+2))
    FUNC3("branch: internal\n");
  else
    FUNC3("branch: external\n");
  FUNC4(FUNC10(ba[i]+2));
  FUNC0((int)out,ba[i]+2,FUNC10(ba[i]+2));
  FUNC6(0);
}