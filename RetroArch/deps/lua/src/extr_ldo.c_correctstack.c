
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int * stack; TYPE_7__* ci; TYPE_6__* openupval; int * top; } ;
typedef TYPE_5__ lua_State ;
struct TYPE_10__ {TYPE_6__* next; } ;
struct TYPE_11__ {TYPE_1__ open; } ;
struct TYPE_15__ {int * v; TYPE_2__ u; } ;
typedef TYPE_6__ UpVal ;
struct TYPE_12__ {int * base; } ;
struct TYPE_13__ {TYPE_3__ l; } ;
struct TYPE_16__ {TYPE_4__ u; int * func; int * top; struct TYPE_16__* previous; } ;
typedef int TValue ;
typedef TYPE_7__ CallInfo ;


 scalar_t__ isLua (TYPE_7__*) ;

__attribute__((used)) static void correctstack (lua_State *L, TValue *oldstack) {
  CallInfo *ci;
  UpVal *up;
  L->top = (L->top - oldstack) + L->stack;
  for (up = L->openupval; up != ((void*)0); up = up->u.open.next)
    up->v = (up->v - oldstack) + L->stack;
  for (ci = L->ci; ci != ((void*)0); ci = ci->previous) {
    ci->top = (ci->top - oldstack) + L->stack;
    ci->func = (ci->func - oldstack) + L->stack;
    if (isLua(ci))
      ci->u.l.base = (ci->u.l.base - oldstack) + L->stack;
  }
}
