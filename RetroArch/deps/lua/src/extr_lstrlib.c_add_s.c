
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int luaL_Buffer ;
struct TYPE_4__ {int * L; } ;
typedef TYPE_1__ MatchState ;


 char const L_ESC ;
 int isdigit (int ) ;
 int luaL_addchar (int *,char const) ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_addvalue (int *) ;
 int luaL_error (int *,char*,char const) ;
 int luaL_tolstring (int *,int,int *) ;
 int lua_remove (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int push_onecapture (TYPE_1__*,char const,char const*,char const*) ;
 int uchar (char const) ;

__attribute__((used)) static void add_s (MatchState *ms, luaL_Buffer *b, const char *s,
                                                   const char *e) {
  size_t l, i;
  lua_State *L = ms->L;
  const char *news = lua_tolstring(L, 3, &l);
  for (i = 0; i < l; i++) {
    if (news[i] != L_ESC)
      luaL_addchar(b, news[i]);
    else {
      i++;
      if (!isdigit(uchar(news[i]))) {
        if (news[i] != L_ESC)
          luaL_error(L, "invalid use of '%c' in replacement string", L_ESC);
        luaL_addchar(b, news[i]);
      }
      else if (news[i] == '0')
          luaL_addlstring(b, s, e - s);
      else {
        push_onecapture(ms, news[i] - '1', s, e);
        luaL_tolstring(L, -1, ((void*)0));
        lua_remove(L, -2);
        luaL_addvalue(b);
      }
    }
  }
}
