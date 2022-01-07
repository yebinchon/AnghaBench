
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int offset; int code; } ;
struct TYPE_5__ {int buff; int f; TYPE_1__ i; } ;
typedef int PattFunc ;
typedef TYPE_2__ Instruction ;


 int IFunc ;
 int instsize (size_t) ;
 int memcpy (int ,void const*,size_t) ;
 TYPE_2__* newpatt (int *,int) ;

__attribute__((used)) static void newpattfunc (lua_State *L, PattFunc f, const void *ud, size_t l) {
  int n = instsize(l) + 1;
  Instruction *p = newpatt(L, n);
  p[0].i.code = IFunc;
  p[0].i.offset = n;
  p[1].f = f;
  memcpy(p[2].buff, ud, l);
}
