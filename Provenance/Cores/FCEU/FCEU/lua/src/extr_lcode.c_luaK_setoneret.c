
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int info; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct TYPE_8__ {scalar_t__ k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int FuncState ;


 int GETARG_A (int ) ;
 int SETARG_B (int ,int) ;
 scalar_t__ VCALL ;
 scalar_t__ VNONRELOC ;
 scalar_t__ VRELOCABLE ;
 scalar_t__ VVARARG ;
 int getcode (int *,TYPE_3__*) ;

void luaK_setoneret (FuncState *fs, expdesc *e) {
  if (e->k == VCALL) {
    e->k = VNONRELOC;
    e->u.s.info = GETARG_A(getcode(fs, e));
  }
  else if (e->k == VVARARG) {
    SETARG_B(getcode(fs, e), 2);
    e->k = VRELOCABLE;
  }
}
