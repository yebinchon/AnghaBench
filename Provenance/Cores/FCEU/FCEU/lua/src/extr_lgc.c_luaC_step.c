
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int l_mem ;
struct TYPE_4__ {int gcstepmul; int gcdept; scalar_t__ totalbytes; scalar_t__ GCthreshold; scalar_t__ gcstate; scalar_t__ estimate; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCSTEPSIZE ;
 scalar_t__ GCSpause ;
 int MAX_LUMEM ;
 int lua_assert (int) ;
 int setthreshold (TYPE_1__*) ;
 scalar_t__ singlestep (int *) ;

void luaC_step (lua_State *L) {
  global_State *g = G(L);
  l_mem lim = (GCSTEPSIZE/100) * g->gcstepmul;
  if (lim == 0)
    lim = (MAX_LUMEM-1)/2;
  g->gcdept += g->totalbytes - g->GCthreshold;
  do {
    lim -= singlestep(L);
    if (g->gcstate == GCSpause)
      break;
  } while (lim > 0);
  if (g->gcstate != GCSpause) {
    if (g->gcdept < GCSTEPSIZE)
      g->GCthreshold = g->totalbytes + GCSTEPSIZE;
    else {
      g->gcdept -= GCSTEPSIZE;
      g->GCthreshold = g->totalbytes;
    }
  }
  else {
    lua_assert(g->totalbytes >= g->estimate);
    setthreshold(g);
  }
}
