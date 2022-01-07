
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int buff ;
typedef int StkId ;


 int MAXNUMBER2STR ;
 int fltvalue (int ) ;
 int ivalue (int ) ;
 int luaS_newlstr (int *,char*,size_t) ;
 int lua_assert (int ) ;
 char lua_getlocaledecpoint () ;
 size_t lua_integer2str (char*,int,int ) ;
 size_t lua_number2str (char*,int,int ) ;
 int setsvalue2s (int *,int ,int ) ;
 size_t strspn (char*,char*) ;
 scalar_t__ ttisinteger (int ) ;
 int ttisnumber (int ) ;

void luaO_tostring (lua_State *L, StkId obj) {
  char buff[MAXNUMBER2STR];
  size_t len;
  lua_assert(ttisnumber(obj));
  if (ttisinteger(obj))
    len = lua_integer2str(buff, sizeof(buff), ivalue(obj));
  else {
    len = lua_number2str(buff, sizeof(buff), fltvalue(obj));

    if (buff[strspn(buff, "-0123456789")] == '\0') {
      buff[len++] = lua_getlocaledecpoint();
      buff[len++] = '0';
    }

  }
  setsvalue2s(L, obj, luaS_newlstr(L, buff, len));
}
