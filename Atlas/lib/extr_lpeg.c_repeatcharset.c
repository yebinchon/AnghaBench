
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int * buff; } ;
typedef TYPE_1__ Instruction ;
typedef int * Charset ;


 scalar_t__ CHARSETINSTSIZE ;
 int ISpan ;
 int addpatt (int *,TYPE_1__*,int) ;
 int correctset (TYPE_1__*) ;
 size_t k ;
 int loopset (size_t,int ) ;
 TYPE_1__* newpatt (int *,scalar_t__) ;
 int setinst (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int repeatcharset (lua_State *L, Charset cs, int l1, int n) {

  int i;
  Instruction *p = newpatt(L, n*l1 + CHARSETINSTSIZE);
  for (i = 0; i < n; i++) {
    p += addpatt(L, p, 1);
  }
  setinst(p, ISpan, 0);
  loopset(k, p[1].buff[k] = cs[k]);
  correctset(p);
  return 1;
}
