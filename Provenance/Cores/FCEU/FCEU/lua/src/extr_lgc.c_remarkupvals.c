
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* next; TYPE_4__* prev; } ;
struct TYPE_9__ {TYPE_1__ l; } ;
struct TYPE_11__ {int v; TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_4__ uvhead; } ;
typedef TYPE_3__ global_State ;
typedef TYPE_4__ UpVal ;


 scalar_t__ isgray (int ) ;
 int lua_assert (int) ;
 int markvalue (TYPE_3__*,int ) ;
 int obj2gco (TYPE_4__*) ;

__attribute__((used)) static void remarkupvals (global_State *g) {
  UpVal *uv;
  for (uv = g->uvhead.u.l.next; uv != &g->uvhead; uv = uv->u.l.next) {
    lua_assert(uv->u.l.next->u.l.prev == uv && uv->u.l.prev->u.l.next == uv);
    if (isgray(obj2gco(uv)))
      markvalue(g, uv->v);
  }
}
