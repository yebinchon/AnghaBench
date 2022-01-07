
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_14__ {scalar_t__ code; int offset; } ;
struct TYPE_15__ {TYPE_1__ i; } ;
typedef TYPE_2__ Instruction ;
typedef int CharsetTag ;


 int IChoice ;
 scalar_t__ ICommit ;
 TYPE_2__* basicUnion (int *,TYPE_2__*,int,int,int*,int *) ;
 int copypatt (TYPE_2__*,TYPE_2__*,int) ;
 int firstpart (TYPE_2__*,int) ;
 int interfere (TYPE_2__*,int,int *) ;
 int setinst (TYPE_2__*,scalar_t__,int) ;
 int setinstaux (TYPE_2__*,int ,int,int) ;
 int sizei (TYPE_2__*) ;

__attribute__((used)) static Instruction *separateparts (lua_State *L, Instruction *p1, int l1,
                                   int l2, int *size, CharsetTag *st2) {
  int sp = firstpart(p1, l1);
  if (sp == 0)
    return basicUnion(L, p1, l1, l2, size, st2);
  else if ((p1 + sp - 1)->i.code == ICommit || !interfere(p1, sp, st2)) {
    Instruction *p;
    int init = *size;
    int end = init + sp;
    *size = end;
    p = separateparts(L, p1 + sp, l1 - sp, l2, size, st2);
    copypatt(p + init, p1, sp);
    (p + end - 1)->i.offset = *size - (end - 1);
    return p;
  }
  else {
    Instruction *p;
    int init = *size;
    int end = init + sp + 1;
    int sizefirst = sizei(p1);
    *size = end;
    p = separateparts(L, p1 + sp, l1 - sp, l2, size, st2);
    copypatt(p + init, p1, sizefirst);
    (p + init)->i.offset++;
    init += sizefirst;
    setinstaux(p + init, IChoice, sp - sizefirst + 1, 1); init++;
    copypatt(p + init, p1 + sizefirst, sp - sizefirst - 1);
    init += sp - sizefirst - 1;
    setinst(p + init, ICommit, *size - (end - 1));
    return p;
  }
}
