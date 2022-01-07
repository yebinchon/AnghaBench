
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {unsigned int gcfinnum; scalar_t__ tobefnz; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCTM (int *,int) ;
 int lua_assert (int) ;

__attribute__((used)) static int runafewfinalizers (lua_State *L) {
  global_State *g = G(L);
  unsigned int i;
  lua_assert(!g->tobefnz || g->gcfinnum > 0);
  for (i = 0; g->tobefnz && i < g->gcfinnum; i++)
    GCTM(L, 1);
  g->gcfinnum = (!g->tobefnz) ? 0
                    : g->gcfinnum * 2;
  return i;
}
