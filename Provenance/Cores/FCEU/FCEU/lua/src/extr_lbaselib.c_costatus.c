
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 int CO_DEAD ;
 int CO_NOR ;
 int CO_RUN ;
 int CO_SUS ;

 int lua_getstack (int *,int ,int *) ;
 int lua_gettop (int *) ;
 int lua_status (int *) ;

__attribute__((used)) static int costatus (lua_State *L, lua_State *co) {
  if (L == co) return CO_RUN;
  switch (lua_status(co)) {
    case 128:
      return CO_SUS;
    case 0: {
      lua_Debug ar;
      if (lua_getstack(co, 0, &ar) > 0)
        return CO_NOR;
      else if (lua_gettop(co) == 0)
          return CO_DEAD;
      else
        return CO_SUS;
    }
    default:
      return CO_DEAD;
  }
}
