#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int sizecode; int sizek; int nups; int sizep; int is_vararg; int /*<<< orphan*/ * code; TYPE_1__** p; int /*<<< orphan*/ * k; } ;
struct TYPE_8__ {int nups; } ;
typedef  TYPE_2__ Proto ;
typedef  int OpCode ;
typedef  int /*<<< orphan*/  Instruction ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int LUA_MULTRET ; 
 int NO_REG ; 
 int NUM_OPCODES ; 
#define  OP_CALL 148 
#define  OP_CLOSURE 147 
#define  OP_CONCAT 146 
#define  OP_FORLOOP 145 
#define  OP_FORPREP 144 
#define  OP_GETGLOBAL 143 
#define  OP_GETUPVAL 142 
#define  OP_JMP 141 
#define  OP_LOADBOOL 140 
#define  OP_LOADNIL 139 
 int OP_MOVE ; 
#define  OP_RETURN 138 
#define  OP_SELF 137 
#define  OP_SETGLOBAL 136 
#define  OP_SETLIST 135 
#define  OP_SETUPVAL 134 
#define  OP_TAILCALL 133 
#define  OP_TFORLOOP 132 
#define  OP_VARARG 131 
 int /*<<< orphan*/  OpArgK ; 
 int /*<<< orphan*/  OpArgR ; 
 int VARARG_ISVARARG ; 
 int VARARG_NEEDSARG ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (TYPE_2__ const*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int) ; 
#define  iABC 130 
#define  iABx 129 
#define  iAsBx 128 
 int FUNC13 (TYPE_2__ const*) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Instruction FUNC17 (const Proto *pt, int lastpc, int reg) {
  int pc;
  int last;  /* stores position of last instruction that changed `reg' */
  last = pt->sizecode-1;  /* points to final return (a `neutral' instruction) */
  FUNC6(FUNC13(pt));
  for (pc = 0; pc < lastpc; pc++) {
    Instruction i = pt->code[pc];
    OpCode op = FUNC5(i);
    int a = FUNC0(i);
    int b = 0;
    int c = 0;
    FUNC6(op < NUM_OPCODES);
    FUNC9(pt, a);
    switch (FUNC12(op)) {
      case iABC: {
        b = FUNC1(i);
        c = FUNC3(i);
        FUNC6(FUNC7(pt, b, FUNC10(op)));
        FUNC6(FUNC7(pt, c, FUNC11(op)));
        break;
      }
      case iABx: {
        b = FUNC2(i);
        if (FUNC10(op) == OpArgK) FUNC6(b < pt->sizek);
        break;
      }
      case iAsBx: {
        b = FUNC4(i);
        if (FUNC10(op) == OpArgR) {
          int dest = pc+1+b;
          FUNC6(0 <= dest && dest < pt->sizecode);
          if (dest > 0) {
            int j;
            /* check that it does not jump to a setlist count; this
               is tricky, because the count from a previous setlist may
               have the same value of an invalid setlist; so, we must
               go all the way back to the first of them (if any) */
            for (j = 0; j < dest; j++) {
              Instruction d = pt->code[dest-1-j];
              if (!(FUNC5(d) == OP_SETLIST && FUNC3(d) == 0)) break;
            }
            /* if 'j' is even, previous value is not a setlist (even if
               it looks like one) */
            FUNC6((j&1) == 0);
          }
        }
        break;
      }
    }
    if (FUNC14(op)) {
      if (a == reg) last = pc;  /* change register `a' */
    }
    if (FUNC15(op)) {
      FUNC6(pc+2 < pt->sizecode);  /* check skip */
      FUNC6(FUNC5(pt->code[pc+1]) == OP_JMP);
    }
    switch (op) {
      case OP_LOADBOOL: {
        if (c == 1) {  /* does it jump? */
          FUNC6(pc+2 < pt->sizecode);  /* check its jump */
          FUNC6(FUNC5(pt->code[pc+1]) != OP_SETLIST ||
                FUNC3(pt->code[pc+1]) != 0);
        }
        break;
      }
      case OP_LOADNIL: {
        if (a <= reg && reg <= b)
          last = pc;  /* set registers from `a' to `b' */
        break;
      }
      case OP_GETUPVAL:
      case OP_SETUPVAL: {
        FUNC6(b < pt->nups);
        break;
      }
      case OP_GETGLOBAL:
      case OP_SETGLOBAL: {
        FUNC6(FUNC16(&pt->k[b]));
        break;
      }
      case OP_SELF: {
        FUNC9(pt, a+1);
        if (reg == a+1) last = pc;
        break;
      }
      case OP_CONCAT: {
        FUNC6(b < c);  /* at least two operands */
        break;
      }
      case OP_TFORLOOP: {
        FUNC6(c >= 1);  /* at least one result (control variable) */
        FUNC9(pt, a+2+c);  /* space for results */
        if (reg >= a+2) last = pc;  /* affect all regs above its base */
        break;
      }
      case OP_FORLOOP:
      case OP_FORPREP:
        FUNC9(pt, a+3);
        /* go through */
      case OP_JMP: {
        int dest = pc+1+b;
        /* not full check and jump is forward and do not skip `lastpc'? */
        if (reg != NO_REG && pc < dest && dest <= lastpc)
          pc += b;  /* do the jump */
        break;
      }
      case OP_CALL:
      case OP_TAILCALL: {
        if (b != 0) {
          FUNC9(pt, a+b-1);
        }
        c--;  /* c = num. returns */
        if (c == LUA_MULTRET) {
          FUNC6(FUNC8(pt, pc));
        }
        else if (c != 0)
          FUNC9(pt, a+c-1);
        if (reg >= a) last = pc;  /* affect all registers above base */
        break;
      }
      case OP_RETURN: {
        b--;  /* b = num. returns */
        if (b > 0) FUNC9(pt, a+b-1);
        break;
      }
      case OP_SETLIST: {
        if (b > 0) FUNC9(pt, a + b);
        if (c == 0) {
          pc++;
          FUNC6(pc < pt->sizecode - 1);
        }
        break;
      }
      case OP_CLOSURE: {
        int nup, j;
        FUNC6(b < pt->sizep);
        nup = pt->p[b]->nups;
        FUNC6(pc + nup < pt->sizecode);
        for (j = 1; j <= nup; j++) {
          OpCode op1 = FUNC5(pt->code[pc + j]);
          FUNC6(op1 == OP_GETUPVAL || op1 == OP_MOVE);
        }
        if (reg != NO_REG)  /* tracing? */
          pc += nup;  /* do not 'execute' these pseudo-instructions */
        break;
      }
      case OP_VARARG: {
        FUNC6((pt->is_vararg & VARARG_ISVARARG) &&
             !(pt->is_vararg & VARARG_NEEDSARG));
        b--;
        if (b == LUA_MULTRET) FUNC6(FUNC8(pt, pc));
        FUNC9(pt, a+b-1);
        break;
      }
      default: break;
    }
  }
  return pt->code[last];
}