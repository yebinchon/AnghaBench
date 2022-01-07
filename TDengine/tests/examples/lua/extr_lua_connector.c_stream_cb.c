
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cb_param {int callback; int * state; } ;
typedef int lua_State ;
typedef char int64_t ;
struct TYPE_3__ {char* name; int type; } ;
typedef int ** TAOS_ROW ;
typedef int TAOS_RES ;
typedef TYPE_1__ TAOS_FIELD ;


 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int ) ;
 int lua_newtable (int *) ;
 int lua_pushinteger (int *,char) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,double) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawgeti (int *,int ,int ) ;
 int lua_settable (int *,int) ;
 int printf (char*) ;
 TYPE_1__* taos_fetch_fields (int *) ;
 int taos_num_fields (int *) ;

void stream_cb(void *param, TAOS_RES *result, TAOS_ROW row){

  struct cb_param* p = (struct cb_param*) param;
  TAOS_FIELD *fields = taos_fetch_fields(result);
  int numFields = taos_num_fields(result);

  printf("\n\r-----------------------------------------------------------------------------------\n");



  lua_State *L = p->state;
  lua_rawgeti(L, LUA_REGISTRYINDEX, p->callback);

  lua_newtable(L);

  for (int i = 0; i < numFields; ++i) {
    if (row[i] == ((void*)0)) {
      continue;
    }

    lua_pushstring(L,fields[i].name);

    switch (fields[i].type) {
    case 128:
      lua_pushinteger(L,*((char *)row[i]));
      break;
    case 130:
      lua_pushinteger(L,*((short *)row[i]));
      break;
    case 132:
      lua_pushinteger(L,*((int *)row[i]));
      break;
    case 137:
      lua_pushinteger(L,*((int64_t *)row[i]));
      break;
    case 133:
      lua_pushnumber(L,*((float *)row[i]));
      break;
    case 134:
      lua_pushnumber(L,*((double *)row[i]));
      break;
    case 136:
    case 131:
      lua_pushstring(L,(char *)row[i]);
      break;
    case 129:
      lua_pushinteger(L,*((int64_t *)row[i]));
      break;
    case 135:
      lua_pushinteger(L,*((char *)row[i]));
      break;
    default:
      lua_pushnil(L);
      break;
    }

    lua_settable(L, -3);
  }

  lua_call(L, 1, 0);

  printf("-----------------------------------------------------------------------------------\n\r");
}
