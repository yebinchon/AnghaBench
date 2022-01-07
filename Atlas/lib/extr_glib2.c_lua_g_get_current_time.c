
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int tv_usec; int tv_sec; } ;
typedef TYPE_1__ GTimeVal ;


 int g_get_current_time (TYPE_1__*) ;
 int lua_newtable (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_setfield (int *,int,char*) ;

__attribute__((used)) static int lua_g_get_current_time (lua_State *L) {
 GTimeVal t;

 g_get_current_time(&t);

 lua_newtable(L);
 lua_pushinteger(L, t.tv_sec);
 lua_setfield(L, -2, "tv_sec");
 lua_pushinteger(L, t.tv_usec);
 lua_setfield(L, -2, "tv_usec");

 return 1;
}
