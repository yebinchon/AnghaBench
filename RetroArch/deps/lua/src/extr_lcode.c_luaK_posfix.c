
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int info; } ;
struct TYPE_17__ {TYPE_1__ u; int k; int t; int f; } ;
typedef TYPE_2__ expdesc ;
typedef int FuncState ;
typedef int BinOpr ;


 int GETARG_B (int ) ;
 int GET_OPCODE (int ) ;
 int LUA_OPADD ;
 int NO_JUMP ;
 int OP_ADD ;
 int OP_CONCAT ;
 int OpCode ;
 int SETARG_B (int ,int ) ;
 int VRELOCABLE ;
 int cast (int ,int ) ;
 int codebinexpval (int *,int ,TYPE_2__*,TYPE_2__*,int) ;
 int codecomp (int *,int,TYPE_2__*,TYPE_2__*) ;
 int constfolding (int *,int ,TYPE_2__*,TYPE_2__*) ;
 int freeexp (int *,TYPE_2__*) ;
 int getinstruction (int *,TYPE_2__*) ;
 int luaK_concat (int *,int *,int ) ;
 int luaK_dischargevars (int *,TYPE_2__*) ;
 int luaK_exp2nextreg (int *,TYPE_2__*) ;
 int luaK_exp2val (int *,TYPE_2__*) ;
 int lua_assert (int) ;

void luaK_posfix (FuncState *fs, BinOpr op,
                  expdesc *e1, expdesc *e2, int line) {
  switch (op) {
    case 147: {
      lua_assert(e1->t == NO_JUMP);
      luaK_dischargevars(fs, e2);
      luaK_concat(fs, &e2->f, e1->f);
      *e1 = *e2;
      break;
    }
    case 132: {
      lua_assert(e1->f == NO_JUMP);
      luaK_dischargevars(fs, e2);
      luaK_concat(fs, &e2->t, e1->t);
      *e1 = *e2;
      break;
    }
    case 143: {
      luaK_exp2val(fs, e2);
      if (e2->k == VRELOCABLE &&
          GET_OPCODE(getinstruction(fs, e2)) == OP_CONCAT) {
        lua_assert(e1->u.info == GETARG_B(getinstruction(fs, e2))-1);
        freeexp(fs, e1);
        SETARG_B(getinstruction(fs, e2), e1->u.info);
        e1->k = VRELOCABLE; e1->u.info = e2->u.info;
      }
      else {
        luaK_exp2nextreg(fs, e2);
        codebinexpval(fs, OP_CONCAT, e1, e2, line);
      }
      break;
    }
    case 148: case 128: case 134: case 142:
    case 138: case 135: case 131:
    case 146: case 145: case 144:
    case 130: case 129: {
      if (!constfolding(fs, op + LUA_OPADD, e1, e2))
        codebinexpval(fs, cast(OpCode, op + OP_ADD), e1, e2, line);
      break;
    }
    case 141: case 136: case 137:
    case 133: case 139: case 140: {
      codecomp(fs, op, e1, e2);
      break;
    }
    default: lua_assert(0);
  }
}
