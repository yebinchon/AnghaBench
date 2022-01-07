
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valuecached; int ptop; int L; } ;
typedef TYPE_1__ CapState ;


 int lua_rawgeti (int ,int ,int) ;
 int lua_replace (int ,int ) ;
 int penvidx (int ) ;
 int subscache (int ) ;

__attribute__((used)) static void updatecache_ (CapState *cs, int v) {
  lua_rawgeti(cs->L, penvidx(cs->ptop), v);
  lua_replace(cs->L, subscache(cs->ptop));
  cs->valuecached = v;
}
