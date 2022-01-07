
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ L; int funcs_ndx; } ;
typedef TYPE_2__ rc_parse_state_t ;
struct TYPE_6__ {int luafunc; } ;
struct TYPE_8__ {int type; TYPE_1__ value; } ;
typedef TYPE_3__ rc_operand_t ;


 int LUA_REGISTRYINDEX ;
 int RC_INVALID_LUA_OPERAND ;
 int RC_OK ;
 int RC_OPERAND_LUA ;
 scalar_t__ isalnum (char const) ;
 int isalpha (char const) ;
 int luaL_ref (scalar_t__,int ) ;
 int lua_gettable (scalar_t__,int ) ;
 int lua_isfunction (scalar_t__,int) ;
 int lua_istable (scalar_t__,int ) ;
 int lua_pop (scalar_t__,int) ;
 int lua_pushlstring (scalar_t__,char const*,int) ;

__attribute__((used)) static int rc_parse_operand_lua(rc_operand_t* self, const char** memaddr, rc_parse_state_t* parse) {
  const char* aux = *memaddr;

  const char* id;


  if (*aux++ != '@') {
    return RC_INVALID_LUA_OPERAND;
  }

  if (!isalpha(*aux)) {
    return RC_INVALID_LUA_OPERAND;
  }


  id = aux;


  while (isalnum(*aux) || *aux == '_') {
    aux++;
  }



  if (parse->L != 0) {
    if (!lua_istable(parse->L, parse->funcs_ndx)) {
      return RC_INVALID_LUA_OPERAND;
    }

    lua_pushlstring(parse->L, id, aux - id);
    lua_gettable(parse->L, parse->funcs_ndx);

    if (!lua_isfunction(parse->L, -1)) {
      lua_pop(parse->L, 1);
      return RC_INVALID_LUA_OPERAND;
    }

    self->value.luafunc = luaL_ref(parse->L, LUA_REGISTRYINDEX);
  }



  self->type = RC_OPERAND_LUA;
  *memaddr = aux;
  return RC_OK;
}
