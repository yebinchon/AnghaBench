
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int L; int ptop; TYPE_1__* cap; } ;
struct TYPE_6__ {int idx; } ;
typedef TYPE_2__ CapState ;


 int lua_gettable (int ,int ) ;
 int lua_isnil (int ,int) ;
 int lua_pop (int ,int) ;
 int pushallcaptures (TYPE_2__*,int ) ;
 int subscache (int ) ;
 int updatecache (TYPE_2__*,int) ;

__attribute__((used)) static int querycap (CapState *cs) {
  int idx = cs->cap->idx;
  int n = pushallcaptures(cs, 0);
  if (n > 1)
    lua_pop(cs->L, n - 1);
  updatecache(cs, idx);
  lua_gettable(cs->L, subscache(cs->ptop));
  if (!lua_isnil(cs->L, -1))
    return 1;
  else {
    lua_pop(cs->L, 1);
    return 0;
  }
}
