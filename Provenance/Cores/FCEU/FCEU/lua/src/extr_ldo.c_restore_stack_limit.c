
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stack_last; int stack; int stacksize; int size_ci; scalar_t__ base_ci; scalar_t__ ci; } ;
typedef TYPE_1__ lua_State ;


 int EXTRA_STACK ;
 int LUAI_MAXCALLS ;
 int cast_int (scalar_t__) ;
 int luaD_reallocCI (TYPE_1__*,int) ;
 int lua_assert (int) ;

__attribute__((used)) static void restore_stack_limit (lua_State *L) {
  lua_assert(L->stack_last - L->stack == L->stacksize - EXTRA_STACK - 1);
  if (L->size_ci > LUAI_MAXCALLS) {
    int inuse = cast_int(L->ci - L->base_ci);
    if (inuse + 1 < LUAI_MAXCALLS)
      luaD_reallocCI(L, LUAI_MAXCALLS);
  }
}
