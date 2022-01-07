
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int top; } ;
typedef TYPE_4__ lua_State ;
typedef int Table ;
struct TYPE_13__ {TYPE_1__* p; } ;
struct TYPE_14__ {scalar_t__ isC; } ;
struct TYPE_16__ {TYPE_2__ l; TYPE_3__ c; } ;
struct TYPE_12__ {int* lineinfo; int sizelineinfo; } ;
typedef TYPE_5__ Closure ;


 int incr_top (TYPE_4__*) ;
 int * luaH_new (TYPE_4__*,int ,int ) ;
 int luaH_setnum (TYPE_4__*,int *,int) ;
 int setbvalue (int ,int) ;
 int sethvalue (TYPE_4__*,int ,int *) ;
 int setnilvalue (int ) ;

__attribute__((used)) static void collectvalidlines (lua_State *L, Closure *f) {
  if (f == ((void*)0) || f->c.isC) {
    setnilvalue(L->top);
  }
  else {
    Table *t = luaH_new(L, 0, 0);
    int *lineinfo = f->l.p->lineinfo;
    int i;
    for (i=0; i<f->l.p->sizelineinfo; i++)
      setbvalue(luaH_setnum(L, t, lineinfo[i]), 1);
    sethvalue(L, L->top, t);
  }
  incr_top(L);
}
