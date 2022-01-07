
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* peek ) (unsigned int,unsigned int,int ) ;int ud; } ;
typedef TYPE_1__ rc_luapeek_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int lua_pushinteger (int *,unsigned int) ;
 scalar_t__ lua_touserdata (int *,int) ;
 unsigned int stub1 (unsigned int,unsigned int,int ) ;

__attribute__((used)) static int rc_luapeek(lua_State* L) {
  unsigned address = (unsigned)luaL_checkinteger(L, 1);
  unsigned num_bytes = (unsigned)luaL_checkinteger(L, 2);
  rc_luapeek_t* luapeek = (rc_luapeek_t*)lua_touserdata(L, 3);

  unsigned value = luapeek->peek(address, num_bytes, luapeek->ud);

  lua_pushinteger(L, value);
  return 1;
}
