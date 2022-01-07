
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {scalar_t__ gcstate; int * grayagain; } ;
typedef TYPE_1__ global_State ;
struct TYPE_8__ {int * gclist; } ;
typedef TYPE_2__ Table ;
typedef int GCObject ;


 TYPE_1__* G (int *) ;
 scalar_t__ GCSfinalize ;
 scalar_t__ GCSpause ;
 int black2gray (int *) ;
 scalar_t__ isblack (int *) ;
 int isdead (TYPE_1__*,int *) ;
 int lua_assert (int) ;
 int * obj2gco (TYPE_2__*) ;

void luaC_barrierback (lua_State *L, Table *t) {
  global_State *g = G(L);
  GCObject *o = obj2gco(t);
  lua_assert(isblack(o) && !isdead(g, o));
  lua_assert(g->gcstate != GCSfinalize && g->gcstate != GCSpause);
  black2gray(o);
  t->gclist = g->grayagain;
  g->grayagain = o;
}
