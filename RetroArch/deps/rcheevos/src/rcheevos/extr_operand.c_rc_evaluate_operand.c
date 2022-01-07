
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int rc_peek_t ;
struct TYPE_8__ {unsigned int num; TYPE_1__* memref; int luafunc; } ;
struct TYPE_9__ {int type; TYPE_2__ value; } ;
typedef TYPE_3__ rc_operand_t ;
struct TYPE_10__ {void* ud; int peek; } ;
typedef TYPE_4__ rc_luapeek_t ;
typedef int lua_State ;
struct TYPE_7__ {unsigned int value; unsigned int previous; unsigned int prior; } ;


 int LUA_OK ;
 int LUA_REGISTRYINDEX ;






 int lua_isboolean (int *,int) ;
 int lua_pcall (int *,int,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushlightuserdata (int *,TYPE_4__*) ;
 int lua_rawgeti (int *,int ,int ) ;
 unsigned int lua_toboolean (int *,int) ;
 int lua_tonumber (int *,int) ;
 int rc_luapeek ;

unsigned rc_evaluate_operand(rc_operand_t* self, rc_peek_t peek, void* ud, lua_State* L) {

  rc_luapeek_t luapeek;


  unsigned value = 0;

  switch (self->type) {
    case 132:
      value = self->value.num;
      break;

    case 130:

      return 0;

    case 129:


      if (L != 0) {
        lua_rawgeti(L, LUA_REGISTRYINDEX, self->value.luafunc);
        lua_pushcfunction(L, rc_luapeek);

        luapeek.peek = peek;
        luapeek.ud = ud;

        lua_pushlightuserdata(L, &luapeek);

        if (lua_pcall(L, 2, 1, 0) == LUA_OK) {
          if (lua_isboolean(L, -1)) {
            value = lua_toboolean(L, -1);
          }
          else {
            value = (unsigned)lua_tonumber(L, -1);
          }
        }

        lua_pop(L, 1);
      }



      break;

    case 133:
      value = self->value.memref->value;
      break;

    case 131:
      value = self->value.memref->previous;
      break;

    case 128:
      value = self->value.memref->prior;
      break;
  }

  return value;
}
