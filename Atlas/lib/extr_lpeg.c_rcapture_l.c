
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int Cfunction ;
 int Cquery ;
 int Cstring ;



 int capture_aux (int *,int ,int) ;
 int luaL_argerror (int *,int,char*) ;
 int lua_type (int *,int) ;

__attribute__((used)) static int rcapture_l (lua_State *L) {
  switch (lua_type(L, 2)) {
    case 130: return capture_aux(L, Cfunction, 2);
    case 128: return capture_aux(L, Cquery, 2);
    case 129: return capture_aux(L, Cstring, 2);
    default: return luaL_argerror(L, 2, "invalid replacement value");
  }
}
