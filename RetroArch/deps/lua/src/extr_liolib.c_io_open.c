
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int * f; } ;
typedef TYPE_1__ LStream ;


 int * fopen (char const*,char const*) ;
 int l_checkmode (char const*) ;
 int luaL_argcheck (int *,int ,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_fileresult (int *,int ,char const*) ;
 char* luaL_optstring (int *,int,char*) ;
 TYPE_1__* newfile (int *) ;

__attribute__((used)) static int io_open (lua_State *L) {
  const char *filename = luaL_checkstring(L, 1);
  const char *mode = luaL_optstring(L, 2, "r");
  LStream *p = newfile(L);
  const char *md = mode;
  luaL_argcheck(L, l_checkmode(md), 2, "invalid mode");
  p->f = fopen(filename, mode);
  return (p->f == ((void*)0)) ? luaL_fileresult(L, 0, filename) : 1;
}
