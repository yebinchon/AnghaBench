
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int IAny ;
 int UCHAR_MAX ;
 int * newpatt (int *,int) ;
 int setinstaux (int ,int ,int ,int) ;

__attribute__((used)) static Instruction *any (lua_State *L, int n, int extra, int *offsetp) {
  int offset = offsetp ? *offsetp : 0;
  Instruction *p = newpatt(L, (n - 1)/UCHAR_MAX + extra + 1);
  Instruction *p1 = p + offset;
  for (; n > UCHAR_MAX; n -= UCHAR_MAX)
    setinstaux(p1++, IAny, 0, UCHAR_MAX);
  setinstaux(p1++, IAny, 0, n);
  if (offsetp) *offsetp = p1 - p;
  return p;
}
