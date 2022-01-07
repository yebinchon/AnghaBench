
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int IEnd ;
 int MAXPATTSIZE ;
 int PATTERN_T ;
 int luaL_error (int *,char*) ;
 int luaL_getmetatable (int *,int ) ;
 scalar_t__ lua_newuserdata (int *,size_t) ;
 int lua_setmetatable (int *,int) ;
 int setinst (int *,int ,int ) ;

__attribute__((used)) static Instruction *newpatt (lua_State *L, size_t n) {
  Instruction *p;
  if (n >= MAXPATTSIZE - 1)
    luaL_error(L, "pattern too big");
  p = (Instruction *)lua_newuserdata(L, (n + 1) * sizeof(Instruction));
  luaL_getmetatable(L, PATTERN_T);
  lua_setmetatable(L, -2);
  setinst(p + n, IEnd, 0);
  return p;
}
