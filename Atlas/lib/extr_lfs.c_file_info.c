
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int lua_State ;
struct TYPE_2__ {char const* name; int (* push ) (int *,struct stat*) ;} ;


 char* luaL_checkstring (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pushfstring (int *,char*,char const*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char const*) ;
 int lua_rawset (int *,int) ;
 char* lua_tostring (int *,int) ;
 TYPE_1__* members ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (int *,struct stat*) ;
 int stub2 (int *,struct stat*) ;

__attribute__((used)) static int file_info (lua_State *L) {
 int i;
 struct stat info;
 const char *file = luaL_checkstring (L, 1);

 if (stat(file, &info)) {
  lua_pushnil (L);
  lua_pushfstring (L, "cannot obtain information from file `%s'", file);
  return 2;
 }
 if (lua_isstring (L, 2)) {
  int v;
  const char *member = lua_tostring (L, 2);
  if (strcmp (member, "mode") == 0) v = 0;

  else if (strcmp (member, "blksize") == 0) v = 12;

  else
   for (v = 1; members[v].name; v++)
    if (*members[v].name == *member)
     break;

  members[v].push (L, &info);
  return 1;
 } else if (!lua_istable (L, 2))

  lua_newtable (L);

 for (i = 0; members[i].name; i++) {
  lua_pushstring (L, members[i].name);
  members[i].push (L, &info);
  lua_rawset (L, -3);
 }
 return 1;
}
