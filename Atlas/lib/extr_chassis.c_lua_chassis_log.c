
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int currentline; char* source; char* short_src; } ;
typedef TYPE_1__ lua_Debug ;
struct TYPE_6__ {scalar_t__ base_dir; } ;
typedef TYPE_2__ chassis ;


 int CHASSIS_LUA_REGISTRY_KEY ;
 char const G_DIR_SEPARATOR ;
 int G_LOG_DOMAIN ;






 int LUA_REGISTRYINDEX ;
 int g_log (int ,int const,char*,char const*,int,char const*) ;
 scalar_t__ g_str_has_prefix (char const*,scalar_t__) ;
 int luaL_checkoption (int *,int,char*,char const* const*) ;
 char* luaL_optstring (int *,int,char*) ;
 int lua_getfield (int *,int ,int ) ;
 int lua_getinfo (int *,char*,TYPE_1__*) ;
 int lua_getstack (int *,int,TYPE_1__*) ;
 int lua_pop (int *,int) ;
 scalar_t__ lua_topointer (int *,int) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static int lua_chassis_log(lua_State *L) {
    static const char *const log_names[] = {"error", "critical",
        "warning", "message", "info", "debug", ((void*)0)};
 static const int log_levels[] = {131, 133,
        128, 129,
        130, 132};

    int option = luaL_checkoption(L, 1, "message", log_names);
 const char *log_message = luaL_optstring(L, 2, "nil");
 const char *source = ((void*)0);
 const char *first_source = "unknown";
 int currentline = -1;
 int first_line = -1;
 int stackdepth = 1;
 lua_Debug ar;
 chassis *chas;


 do {

        if (!lua_getstack(L, stackdepth, &ar)) break;
        if (!lua_getinfo(L, "Sl", &ar)) break;

  currentline = ar.currentline;
        source = ar.source;



  if (stackdepth == 1) {
   first_source = ar.short_src;
   first_line = ar.currentline;
  }

 } while (++stackdepth < 11 && source && source[0] != '/' && source[0] != '@');

 if (source) {
  if (source[0] == '@') {

   source++;
  }
        lua_getfield(L, LUA_REGISTRYINDEX, CHASSIS_LUA_REGISTRY_KEY);
        chas = (chassis*) lua_topointer(L, -1);
        lua_pop(L, 1);
        if (chas && chas->base_dir) {
            if (g_str_has_prefix(source, chas->base_dir)) {
                source += strlen(chas->base_dir);

                if (source[0] == G_DIR_SEPARATOR) source++;
            }
        }
 }
    g_log(G_LOG_DOMAIN, log_levels[option], "(%s:%d) %s", (source ? source : first_source),
   (source ? currentline : first_line), log_message);

 return 0;
}
