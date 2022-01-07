
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int byte ;
struct TYPE_4__ {int buff; } ;
typedef TYPE_1__ Instruction ;


 int correctset (TYPE_1__*) ;
 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_gettop (int *) ;
 TYPE_1__* newcharset (int *) ;
 int setchar (int ,int) ;

__attribute__((used)) static int range_l (lua_State *L) {
  int arg;
  int top = lua_gettop(L);
  Instruction *p = newcharset(L);
  for (arg = 1; arg <= top; arg++) {
    int c;
    size_t l;
    const char *r = luaL_checklstring(L, arg, &l);
    luaL_argcheck(L, l == 2, arg, "range must have two characters");
    for (c = (byte)r[0]; c <= (byte)r[1]; c++)
      setchar(p[1].buff, c);
  }
  correctset(p);
  return 1;
}
