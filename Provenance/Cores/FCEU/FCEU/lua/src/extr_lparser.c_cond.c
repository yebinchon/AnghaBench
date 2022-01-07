
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ k; int f; } ;
typedef TYPE_1__ expdesc ;
struct TYPE_8__ {int fs; } ;
typedef TYPE_2__ LexState ;


 scalar_t__ VFALSE ;
 scalar_t__ VNIL ;
 int expr (TYPE_2__*,TYPE_1__*) ;
 int luaK_goiftrue (int ,TYPE_1__*) ;

__attribute__((used)) static int cond (LexState *ls) {

  expdesc v;
  expr(ls, &v);
  if (v.k == VNIL) v.k = VFALSE;
  luaK_goiftrue(ls->fs, &v);
  return v.f;
}
