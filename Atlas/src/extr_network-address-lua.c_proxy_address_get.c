
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int sin6_port; int sin6_addr; } ;
struct TYPE_9__ {int sin_port; int sin_addr; } ;
struct TYPE_8__ {int sa_family; } ;
struct TYPE_7__ {char* sun_path; } ;
struct TYPE_11__ {TYPE_4__ ipv6; TYPE_3__ ipv4; TYPE_2__ common; TYPE_1__ un; } ;
struct TYPE_12__ {TYPE_5__ addr; int name; } ;
typedef TYPE_6__ network_address ;
typedef int lua_State ;
typedef int gsize ;
typedef int dst_addr ;





 int C (char*) ;
 int INET6_ADDRSTRLEN ;
 int S (int ) ;
 char* inet_ntoa (int ) ;
 char* inet_ntop (int,int *,char*,int) ;
 char* luaL_checklstring (int *,int,int *) ;
 scalar_t__ luaL_checkself (int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlstring (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int ntohs (int ) ;
 scalar_t__ strleq (char const*,int ,int ) ;

__attribute__((used)) static int proxy_address_get(lua_State *L) {
 network_address *addr = *(network_address **)luaL_checkself(L);
 gsize keysize = 0;
 const char *key = luaL_checklstring(L, 2, &keysize);

 if (strleq(key, keysize, C("type"))) {
  lua_pushinteger(L, addr->addr.common.sa_family);
 } else if (strleq(key, keysize, C("name"))) {
  lua_pushlstring(L, S(addr->name));
 } else if (strleq(key, keysize, C("address"))) {



  const char *str = ((void*)0);

  switch (addr->addr.common.sa_family) {
  case 130:
   str = inet_ntoa(addr->addr.ipv4.sin_addr);
   if (!str) {

   }
   break;
  case 128:
   str = addr->addr.un.sun_path;
   break;

  default:
   break;
  }

  if (((void*)0) == str) {
   lua_pushnil(L);
  } else {
   lua_pushstring(L, str);
  }
 } else if (strleq(key, keysize, C("port"))) {
  switch (addr->addr.common.sa_family) {
  case 130:
   lua_pushinteger(L, ntohs(addr->addr.ipv4.sin_port));
   break;
  case 129:
   lua_pushinteger(L, ntohs(addr->addr.ipv6.sin6_port));
   break;
  default:
   lua_pushnil(L);
   break;
  }
 } else {
  lua_pushnil(L);
 }

 return 1;
}
