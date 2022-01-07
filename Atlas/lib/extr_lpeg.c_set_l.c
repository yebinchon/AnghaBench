
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int buff; } ;
typedef TYPE_1__ Instruction ;


 int correctset (TYPE_1__*) ;
 int getpatt (int *,int,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 TYPE_1__* newcharset (int *) ;
 int setchar (int ,unsigned char) ;

__attribute__((used)) static int set_l (lua_State *L) {
  size_t l;
  const char *s = luaL_checklstring(L, 1, &l);
  if (l == 1)
    getpatt(L, 1, ((void*)0));
  else {
    Instruction *p = newcharset(L);
    while (l--) {
      setchar(p[1].buff, (unsigned char)(*s));
      s++;
    }
    correctset(p);
  }
  return 1;
}
