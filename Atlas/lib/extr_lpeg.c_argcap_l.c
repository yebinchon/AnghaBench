
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int Carg ;
 int emptycap_aux (int *,int ,char*) ;

__attribute__((used)) static int argcap_l (lua_State *L) {
  return emptycap_aux(L, Carg, "invalid argument index");
}
