
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 char* luaL_buffinitsize (int *,int *,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_pushresultsize (int *,size_t) ;
 char toupper (int ) ;
 int uchar (char const) ;

__attribute__((used)) static int str_upper (lua_State *L) {
  size_t l;
  size_t i;
  luaL_Buffer b;
  const char *s = luaL_checklstring(L, 1, &l);
  char *p = luaL_buffinitsize(L, &b, l);
  for (i=0; i<l; i++)
    p[i] = toupper(uchar(s[i]));
  luaL_pushresultsize(&b, l);
  return 1;
}
