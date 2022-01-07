
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;
typedef int BlockCnt ;


 int NO_JUMP ;
 int OP_FORLOOP ;
 int OP_FORPREP ;
 int OP_TFORCALL ;
 int OP_TFORLOOP ;
 int TK_DO ;
 int adjustlocalvars (TYPE_1__*,int) ;
 int block (TYPE_1__*) ;
 int checknext (TYPE_1__*,int ) ;
 int enterblock (int *,int *,int ) ;
 int leaveblock (int *) ;
 int luaK_codeABC (int *,int ,int,int ,int) ;
 int luaK_codeAsBx (int *,int ,int,int ) ;
 int luaK_fixline (int *,int) ;
 int luaK_jump (int *) ;
 int luaK_patchlist (int *,int,int) ;
 int luaK_patchtohere (int *,int) ;
 int luaK_reserveregs (int *,int) ;

__attribute__((used)) static void forbody (LexState *ls, int base, int line, int nvars, int isnum) {

  BlockCnt bl;
  FuncState *fs = ls->fs;
  int prep, endfor;
  adjustlocalvars(ls, 3);
  checknext(ls, TK_DO);
  prep = isnum ? luaK_codeAsBx(fs, OP_FORPREP, base, NO_JUMP) : luaK_jump(fs);
  enterblock(fs, &bl, 0);
  adjustlocalvars(ls, nvars);
  luaK_reserveregs(fs, nvars);
  block(ls);
  leaveblock(fs);
  luaK_patchtohere(fs, prep);
  if (isnum)
    endfor = luaK_codeAsBx(fs, OP_FORLOOP, base, NO_JUMP);
  else {
    luaK_codeABC(fs, OP_TFORCALL, base, 0, nvars);
    luaK_fixline(fs, line);
    endfor = luaK_codeAsBx(fs, OP_TFORLOOP, base + 2, NO_JUMP);
  }
  luaK_patchlist(fs, endfor, prep + 1);
  luaK_fixline(fs, line);
}
