
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {scalar_t__ code; scalar_t__ offset; } ;
struct TYPE_10__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 scalar_t__ IChoice ;
 scalar_t__ IOpenCall ;
 scalar_t__ IPartialCommit ;
 scalar_t__ IRet ;
 int assert (int) ;
 int dest (TYPE_2__*,int) ;
 int luaL_error (int *,char*,int ) ;
 scalar_t__ sizei (TYPE_2__*) ;
 int val2str (int *,int) ;
 int verify (int *,TYPE_2__*,TYPE_2__*,TYPE_2__*,int,int) ;

__attribute__((used)) static void checkrule (lua_State *L, Instruction *op, int from, int to,
                       int postable, int rule) {
  int i;
  int lastopen = 0;
  for (i = from; i < to; i += sizei(op + i)) {
    if (op[i].i.code == IPartialCommit && op[i].i.offset < 0) {
      int start = dest(op, i);
      assert(op[start - 1].i.code == IChoice && dest(op, start - 1) == i + 1);
      if (start <= lastopen) {
        if (!verify(L, op, op + start, op + i, postable, rule))
          luaL_error(L, "possible infinite loop in %s", val2str(L, rule));
      }
    }
    else if (op[i].i.code == IOpenCall)
      lastopen = i;
  }
  assert(op[i - 1].i.code == IRet);
  verify(L, op, op + from, op + to - 1, postable, rule);
}
