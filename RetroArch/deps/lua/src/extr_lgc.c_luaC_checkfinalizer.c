
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_12__ {TYPE_2__* finobj; TYPE_2__* allgc; TYPE_2__** sweepgc; } ;
typedef TYPE_1__ global_State ;
typedef int Table ;
struct TYPE_13__ {int marked; struct TYPE_13__* next; } ;
typedef TYPE_2__ GCObject ;


 int FINALIZEDBIT ;
 TYPE_1__* G (int *) ;
 int TM_GC ;
 int * gfasttm (TYPE_1__*,int *,int ) ;
 scalar_t__ issweepphase (TYPE_1__*) ;
 int l_setbit (int ,int ) ;
 int makewhite (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__** sweeptolive (int *,TYPE_2__**) ;
 scalar_t__ tofinalize (TYPE_2__*) ;

void luaC_checkfinalizer (lua_State *L, GCObject *o, Table *mt) {
  global_State *g = G(L);
  if (tofinalize(o) ||
      gfasttm(g, mt, TM_GC) == ((void*)0))
    return;
  else {
    GCObject **p;
    if (issweepphase(g)) {
      makewhite(g, o);
      if (g->sweepgc == &o->next)
        g->sweepgc = sweeptolive(L, g->sweepgc);
    }

    for (p = &g->allgc; *p != o; p = &(*p)->next) { }
    *p = o->next;
    o->next = g->finobj;
    g->finobj = o;
    l_setbit(o->marked, FINALIZEDBIT);
  }
}
