
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_11__ {size_t len; struct rmsgpack_dom_value* items; } ;
struct TYPE_10__ {size_t len; TYPE_3__* items; } ;
struct TYPE_8__ {int len; int buff; } ;
struct TYPE_7__ {int buff; } ;
struct TYPE_12__ {TYPE_5__ array; TYPE_4__ map; TYPE_2__ binary; TYPE_1__ string; int bool_; int uint_; int int_; } ;
struct rmsgpack_dom_value {int type; TYPE_6__ val; } ;
typedef int lua_State ;
struct TYPE_9__ {struct rmsgpack_dom_value value; struct rmsgpack_dom_value key; } ;
 int lua_createtable (int *,size_t,size_t) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushlstring (int *,int ,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_settable (int *,int) ;

__attribute__((used)) static void push_rmsgpack_value(lua_State *L, struct rmsgpack_dom_value *value)
{
   uint32_t i;

   switch(value->type)
   {
      case 132:
         lua_pushnumber(L, value->val.int_);
         break;
      case 128:
         lua_pushnumber(L, value->val.uint_);
         break;
      case 134:
         lua_pushlstring(L, value->val.binary.buff, value->val.binary.len);
         break;
      case 133:
         lua_pushboolean(L, value->val.bool_);
         break;
      case 130:
         lua_pushnil(L);
         break;
      case 129:
         lua_pushlstring(L, value->val.string.buff, value->val.binary.len);
         break;
      case 131:
         lua_createtable(L, 0, value->val.map.len);
         for (i = 0; i < value->val.map.len; i++)
         {
            push_rmsgpack_value(L, &value->val.map.items[i].key);
            push_rmsgpack_value(L, &value->val.map.items[i].value);
            lua_settable(L, -3);
         }
         break;
      case 135:
         lua_createtable(L, value->val.array.len, 0);
         for (i = 0; i < value->val.array.len; i++)
         {
            lua_pushnumber(L, i + 1);
            push_rmsgpack_value(L, &value->val.array.items[i]);
            lua_settable(L, -3);
         }
         break;
   }
}
