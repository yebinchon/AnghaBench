
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_14__ {scalar_t__ gcstate; } ;
typedef TYPE_1__ global_State ;
struct TYPE_15__ {int gch; } ;
typedef TYPE_2__ GCObject ;


 TYPE_1__* G (int *) ;
 scalar_t__ GCSfinalize ;
 scalar_t__ GCSpause ;
 scalar_t__ GCSpropagate ;
 scalar_t__ LUA_TTABLE ;
 scalar_t__ isblack (TYPE_2__*) ;
 int isdead (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ iswhite (TYPE_2__*) ;
 int lua_assert (int) ;
 int makewhite (TYPE_1__*,TYPE_2__*) ;
 int reallymarkobject (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ttype (int *) ;

void luaC_barrierf (lua_State *L, GCObject *o, GCObject *v) {
  global_State *g = G(L);
  lua_assert(isblack(o) && iswhite(v) && !isdead(g, v) && !isdead(g, o));
  lua_assert(g->gcstate != GCSfinalize && g->gcstate != GCSpause);
  lua_assert(ttype(&o->gch) != LUA_TTABLE);

  if (g->gcstate == GCSpropagate)
    reallymarkobject(g, v);
  else
    makewhite(g, o);
}
