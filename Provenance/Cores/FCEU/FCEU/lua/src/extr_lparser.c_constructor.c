
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ k; } ;
struct ConsControl {scalar_t__ na; scalar_t__ nh; scalar_t__ tostore; TYPE_4__ v; TYPE_4__* t; } ;
typedef TYPE_4__ expdesc ;
struct TYPE_26__ {TYPE_3__* f; } ;
struct TYPE_22__ {char token; } ;
struct TYPE_21__ {char token; } ;
struct TYPE_25__ {int linenumber; TYPE_2__ lookahead; TYPE_1__ t; TYPE_6__* fs; } ;
struct TYPE_23__ {int * code; } ;
typedef TYPE_5__ LexState ;
typedef TYPE_6__ FuncState ;


 int OP_NEWTABLE ;
 int SETARG_B (int ,int ) ;
 int SETARG_C (int ,int ) ;

 scalar_t__ VRELOCABLE ;
 scalar_t__ VVOID ;
 int check_match (TYPE_5__*,char,char,int) ;
 int checknext (TYPE_5__*,char) ;
 int closelistfield (TYPE_6__*,struct ConsControl*) ;
 int init_exp (TYPE_4__*,scalar_t__,int) ;
 int lastlistfield (TYPE_6__*,struct ConsControl*) ;
 int listfield (TYPE_5__*,struct ConsControl*) ;
 int luaK_codeABC (TYPE_6__*,int ,int ,int ,int ) ;
 int luaK_exp2nextreg (TYPE_6__*,TYPE_4__*) ;
 int luaO_int2fb (scalar_t__) ;
 int luaX_lookahead (TYPE_5__*) ;
 int lua_assert (int) ;
 int recfield (TYPE_5__*,struct ConsControl*) ;
 scalar_t__ testnext (TYPE_5__*,char) ;

__attribute__((used)) static void constructor (LexState *ls, expdesc *t) {

  FuncState *fs = ls->fs;
  int line = ls->linenumber;
  int pc = luaK_codeABC(fs, OP_NEWTABLE, 0, 0, 0);
  struct ConsControl cc;
  cc.na = cc.nh = cc.tostore = 0;
  cc.t = t;
  init_exp(t, VRELOCABLE, pc);
  init_exp(&cc.v, VVOID, 0);
  luaK_exp2nextreg(ls->fs, t);
  checknext(ls, '{');
  do {
    lua_assert(cc.v.k == VVOID || cc.tostore > 0);
    if (ls->t.token == '}') break;
    closelistfield(fs, &cc);
    switch(ls->t.token) {
      case 128: {
        luaX_lookahead(ls);
        if (ls->lookahead.token != '=')
          listfield(ls, &cc);
        else
          recfield(ls, &cc);
        break;
      }
      case '[': {
        recfield(ls, &cc);
        break;
      }
      default: {
        listfield(ls, &cc);
        break;
      }
    }
  } while (testnext(ls, ',') || testnext(ls, ';'));
  check_match(ls, '}', '{', line);
  lastlistfield(fs, &cc);
  SETARG_B(fs->f->code[pc], luaO_int2fb(cc.na));
  SETARG_C(fs->f->code[pc], luaO_int2fb(cc.nh));
}
