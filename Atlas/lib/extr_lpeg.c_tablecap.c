
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cap; int L; } ;
typedef TYPE_1__ CapState ;


 int isclosecap (int ) ;
 scalar_t__ isfullcap (int ) ;
 int lua_newtable (int ) ;
 int lua_rawseti (int ,int,int) ;
 int pushcapture (TYPE_1__*) ;

__attribute__((used)) static int tablecap (CapState *cs) {
  int n = 0;
  lua_newtable(cs->L);
  if (isfullcap(cs->cap++))
    return 1;
  while (!isclosecap(cs->cap)) {
    int i;
    int k = pushcapture(cs);
    for (i = k; i > 0; i--)
      lua_rawseti(cs->L, -(i + 1), n + i);
    n += k;
  }
  cs->cap++;
  return 1;
}
