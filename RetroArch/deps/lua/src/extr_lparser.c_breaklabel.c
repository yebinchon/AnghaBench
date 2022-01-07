
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int * arr; } ;
struct TYPE_10__ {TYPE_2__* dyd; TYPE_1__* fs; int L; } ;
struct TYPE_9__ {TYPE_5__ label; } ;
struct TYPE_8__ {int pc; } ;
typedef int TString ;
typedef TYPE_3__ LexState ;


 int findgotos (TYPE_3__*,int *) ;
 int * luaS_new (int ,char*) ;
 int newlabelentry (TYPE_3__*,TYPE_5__*,int *,int ,int ) ;

__attribute__((used)) static void breaklabel (LexState *ls) {
  TString *n = luaS_new(ls->L, "break");
  int l = newlabelentry(ls, &ls->dyd->label, n, 0, ls->fs->pc);
  findgotos(ls, &ls->dyd->label.arr[l]);
}
