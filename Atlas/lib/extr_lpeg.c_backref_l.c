
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int Cbackref ;
 int emptycap_aux (int *,int ,char*) ;

__attribute__((used)) static int backref_l (lua_State *L) {
  return emptycap_aux(L, Cbackref, "invalid back reference");
}
