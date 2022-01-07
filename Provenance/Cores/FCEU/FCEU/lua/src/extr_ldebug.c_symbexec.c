
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int sizecode; int sizek; int nups; int sizep; int is_vararg; int * code; TYPE_1__** p; int * k; } ;
struct TYPE_8__ {int nups; } ;
typedef TYPE_2__ Proto ;
typedef int OpCode ;
typedef int Instruction ;


 int GETARG_A (int ) ;
 int GETARG_B (int ) ;
 int GETARG_Bx (int ) ;
 int GETARG_C (int ) ;
 int GETARG_sBx (int ) ;
 int GET_OPCODE (int ) ;
 int LUA_MULTRET ;
 int NO_REG ;
 int NUM_OPCODES ;
 int OP_MOVE ;
 int OpArgK ;
 int OpArgR ;
 int VARARG_ISVARARG ;
 int VARARG_NEEDSARG ;
 int check (int) ;
 int checkArgMode (TYPE_2__ const*,int,int ) ;
 int checkopenop (TYPE_2__ const*,int) ;
 int checkreg (TYPE_2__ const*,int) ;
 int getBMode (int) ;
 int getCMode (int) ;
 int getOpMode (int) ;



 int precheck (TYPE_2__ const*) ;
 scalar_t__ testAMode (int) ;
 scalar_t__ testTMode (int) ;
 int ttisstring (int *) ;

__attribute__((used)) static Instruction symbexec (const Proto *pt, int lastpc, int reg) {
  int pc;
  int last;
  last = pt->sizecode-1;
  check(precheck(pt));
  for (pc = 0; pc < lastpc; pc++) {
    Instruction i = pt->code[pc];
    OpCode op = GET_OPCODE(i);
    int a = GETARG_A(i);
    int b = 0;
    int c = 0;
    check(op < NUM_OPCODES);
    checkreg(pt, a);
    switch (getOpMode(op)) {
      case 130: {
        b = GETARG_B(i);
        c = GETARG_C(i);
        check(checkArgMode(pt, b, getBMode(op)));
        check(checkArgMode(pt, c, getCMode(op)));
        break;
      }
      case 129: {
        b = GETARG_Bx(i);
        if (getBMode(op) == OpArgK) check(b < pt->sizek);
        break;
      }
      case 128: {
        b = GETARG_sBx(i);
        if (getBMode(op) == OpArgR) {
          int dest = pc+1+b;
          check(0 <= dest && dest < pt->sizecode);
          if (dest > 0) {
            int j;




            for (j = 0; j < dest; j++) {
              Instruction d = pt->code[dest-1-j];
              if (!(GET_OPCODE(d) == 135 && GETARG_C(d) == 0)) break;
            }


            check((j&1) == 0);
          }
        }
        break;
      }
    }
    if (testAMode(op)) {
      if (a == reg) last = pc;
    }
    if (testTMode(op)) {
      check(pc+2 < pt->sizecode);
      check(GET_OPCODE(pt->code[pc+1]) == 141);
    }
    switch (op) {
      case 140: {
        if (c == 1) {
          check(pc+2 < pt->sizecode);
          check(GET_OPCODE(pt->code[pc+1]) != 135 ||
                GETARG_C(pt->code[pc+1]) != 0);
        }
        break;
      }
      case 139: {
        if (a <= reg && reg <= b)
          last = pc;
        break;
      }
      case 142:
      case 134: {
        check(b < pt->nups);
        break;
      }
      case 143:
      case 136: {
        check(ttisstring(&pt->k[b]));
        break;
      }
      case 137: {
        checkreg(pt, a+1);
        if (reg == a+1) last = pc;
        break;
      }
      case 146: {
        check(b < c);
        break;
      }
      case 132: {
        check(c >= 1);
        checkreg(pt, a+2+c);
        if (reg >= a+2) last = pc;
        break;
      }
      case 145:
      case 144:
        checkreg(pt, a+3);

      case 141: {
        int dest = pc+1+b;

        if (reg != NO_REG && pc < dest && dest <= lastpc)
          pc += b;
        break;
      }
      case 148:
      case 133: {
        if (b != 0) {
          checkreg(pt, a+b-1);
        }
        c--;
        if (c == LUA_MULTRET) {
          check(checkopenop(pt, pc));
        }
        else if (c != 0)
          checkreg(pt, a+c-1);
        if (reg >= a) last = pc;
        break;
      }
      case 138: {
        b--;
        if (b > 0) checkreg(pt, a+b-1);
        break;
      }
      case 135: {
        if (b > 0) checkreg(pt, a + b);
        if (c == 0) {
          pc++;
          check(pc < pt->sizecode - 1);
        }
        break;
      }
      case 147: {
        int nup, j;
        check(b < pt->sizep);
        nup = pt->p[b]->nups;
        check(pc + nup < pt->sizecode);
        for (j = 1; j <= nup; j++) {
          OpCode op1 = GET_OPCODE(pt->code[pc + j]);
          check(op1 == 142 || op1 == OP_MOVE);
        }
        if (reg != NO_REG)
          pc += nup;
        break;
      }
      case 131: {
        check((pt->is_vararg & VARARG_ISVARARG) &&
             !(pt->is_vararg & VARARG_NEEDSARG));
        b--;
        if (b == LUA_MULTRET) check(checkopenop(pt, pc));
        checkreg(pt, a+b-1);
        break;
      }
      default: break;
    }
  }
  return pt->code[last];
}
