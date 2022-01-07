
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_8__ {scalar_t__ offset; } ;
struct TYPE_9__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;


 int copypatt (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ isfenvoff (TYPE_2__*) ;
 int jointable (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;
 int pattsize (int *,int) ;
 int sizei (TYPE_2__*) ;

__attribute__((used)) static int addpatt (lua_State *L, Instruction *p, int p1idx) {
  Instruction *p1 = (Instruction *)lua_touserdata(L, p1idx);
  int sz = pattsize(L, p1idx);
  int corr = jointable(L, p1idx);
  copypatt(p, p1, sz + 1);
  if (corr != 0) {
    Instruction *px;
    for (px = p; px < p + sz; px += sizei(px)) {
      if (isfenvoff(px) && px->i.offset != 0)
        px->i.offset += corr;
    }
  }
  return sz;
}
