
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int luaL_Buffer ;
struct TYPE_9__ {char* s; } ;
struct TYPE_8__ {TYPE_5__* cap; int L; } ;
typedef TYPE_1__ CapState ;


 scalar_t__ Cstring ;
 scalar_t__ captype (TYPE_5__*) ;
 char* closeaddr (TYPE_5__*) ;
 int isclosecap (TYPE_5__*) ;
 int luaL_addlstring (int *,char const*,int) ;
 int luaL_addvalue (int *) ;
 int luaL_buffinit (int ,int *) ;
 int luaL_error (int ,char*,int ) ;
 int luaL_pushresult (int *) ;
 int luaL_typename (int ,int) ;
 int lua_isstring (int ,int) ;
 int lua_pop (int ,int) ;
 int pushcapture (TYPE_1__*) ;
 int stringcap (int *,TYPE_1__*) ;

__attribute__((used)) static void substcap (CapState *cs) {
  luaL_Buffer b;
  const char *curr = (cs->cap - 1)->s;
  luaL_buffinit(cs->L, &b);
  while (!isclosecap(cs->cap)) {
    int n;
    const char *next = cs->cap->s;
    luaL_addlstring(&b, curr, next - curr);
    if (captype(cs->cap) == Cstring)
      stringcap(&b, cs);
    else if ((n = pushcapture(cs)) == 0) {
      curr = next;
      continue;
    }
    else {
      if (n > 1) lua_pop(cs->L, n - 1);
      if (!lua_isstring(cs->L, -1))
        luaL_error(cs->L, "invalid replacement value (a %s)",
                          luaL_typename(cs->L, -1));
      luaL_addvalue(&b);
    }

    curr = closeaddr(cs->cap - 1);
  }
  luaL_addlstring(&b, curr, cs->cap->s - curr);
  luaL_pushresult(&b);
  cs->cap++;
}
