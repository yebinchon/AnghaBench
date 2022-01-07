
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int top; } ;
typedef TYPE_1__ lua_State ;


 int incr_top (TYPE_1__*) ;
 int luaS_new (TYPE_1__*,char const*) ;
 int setsvalue2s (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void pushstr (lua_State *L, const char *str) {
  setsvalue2s(L, L->top, luaS_new(L, str));
  incr_top(L);
}
