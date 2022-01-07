
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int L; } ;
typedef TYPE_1__ CapState ;


 int lua_pushnil (int ) ;
 int lua_replace (int ,int) ;
 int pushallcaptures (TYPE_1__*,int) ;

__attribute__((used)) static int simplecap (CapState *cs) {
  int n;
  lua_pushnil(cs->L);
  n = pushallcaptures(cs, 1);
  lua_replace(cs->L, -(n + 1));
  return n;
}
