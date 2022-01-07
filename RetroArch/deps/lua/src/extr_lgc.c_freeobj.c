
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int lua_State ;
struct TYPE_16__ {int lnglen; } ;
struct TYPE_18__ {TYPE_1__ u; int shrlen; } ;
struct TYPE_17__ {int tt; } ;
struct TYPE_15__ {int nupvalues; } ;
typedef TYPE_2__ GCObject ;
 int freeLclosure (int *,int ) ;
 TYPE_12__* gco2ccl (TYPE_2__*) ;
 int gco2lcl (TYPE_2__*) ;
 int gco2p (TYPE_2__*) ;
 int gco2t (TYPE_2__*) ;
 int gco2th (TYPE_2__*) ;
 TYPE_3__* gco2ts (TYPE_2__*) ;
 int gco2u (TYPE_2__*) ;
 int luaE_freethread (int *,int ) ;
 int luaF_freeproto (int *,int ) ;
 int luaH_free (int *,int ) ;
 int luaM_freemem (int *,TYPE_2__*,int ) ;
 int luaS_remove (int *,TYPE_3__*) ;
 int lua_assert (int ) ;
 int sizeCclosure (int ) ;
 int sizelstring (int ) ;
 int sizeudata (int ) ;

__attribute__((used)) static void freeobj (lua_State *L, GCObject *o) {
  switch (o->tt) {
    case 132: luaF_freeproto(L, gco2p(o)); break;
    case 134: {
      freeLclosure(L, gco2lcl(o));
      break;
    }
    case 135: {
      luaM_freemem(L, o, sizeCclosure(gco2ccl(o)->nupvalues));
      break;
    }
    case 130: luaH_free(L, gco2t(o)); break;
    case 129: luaE_freethread(L, gco2th(o)); break;
    case 128: luaM_freemem(L, o, sizeudata(gco2u(o))); break;
    case 131:
      luaS_remove(L, gco2ts(o));
      luaM_freemem(L, o, sizelstring(gco2ts(o)->shrlen));
      break;
    case 133: {
      luaM_freemem(L, o, sizelstring(gco2ts(o)->u.lnglen));
      break;
    }
    default: lua_assert(0);
  }
}
