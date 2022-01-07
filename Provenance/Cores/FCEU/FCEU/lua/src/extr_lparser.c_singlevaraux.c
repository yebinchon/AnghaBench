
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int info; } ;
struct TYPE_13__ {TYPE_1__ s; } ;
struct TYPE_14__ {int k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
struct TYPE_15__ {struct TYPE_15__* prev; } ;
typedef int TString ;
typedef TYPE_4__ FuncState ;


 int NO_REG ;
 int VGLOBAL ;
 int VLOCAL ;
 int VUPVAL ;
 int indexupvalue (TYPE_4__*,int *,TYPE_3__*) ;
 int init_exp (TYPE_3__*,int,int) ;
 int markupval (TYPE_4__*,int) ;
 int searchvar (TYPE_4__*,int *) ;

__attribute__((used)) static int singlevaraux (FuncState *fs, TString *n, expdesc *var, int base) {
  if (fs == ((void*)0)) {
    init_exp(var, VGLOBAL, NO_REG);
    return VGLOBAL;
  }
  else {
    int v = searchvar(fs, n);
    if (v >= 0) {
      init_exp(var, VLOCAL, v);
      if (!base)
        markupval(fs, v);
      return VLOCAL;
    }
    else {
      if (singlevaraux(fs->prev, n, var, 0) == VGLOBAL)
        return VGLOBAL;
      var->u.s.info = indexupvalue(fs, n, var);
      var->k = VUPVAL;
      return VUPVAL;
    }
  }
}
