
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ls; } ;
struct TYPE_5__ {int lastline; } ;
typedef int OpCode ;
typedef TYPE_2__ FuncState ;


 int CREATE_ABx (int ,int,unsigned int) ;
 scalar_t__ OpArgN ;
 scalar_t__ getCMode (int ) ;
 scalar_t__ getOpMode (int ) ;
 scalar_t__ iABx ;
 scalar_t__ iAsBx ;
 int luaK_code (TYPE_2__*,int ,int ) ;
 int lua_assert (int) ;

int luaK_codeABx (FuncState *fs, OpCode o, int a, unsigned int bc) {
  lua_assert(getOpMode(o) == iABx || getOpMode(o) == iAsBx);
  lua_assert(getCMode(o) == OpArgN);
  return luaK_code(fs, CREATE_ABx(o, a, bc), fs->ls->lastline);
}
