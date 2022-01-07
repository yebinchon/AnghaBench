
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Instruction ;


 int Cclose ;
 int ICloseCapture ;
 int IFullCapture ;
 int IOpenCapture ;
 int addpatt (int *,int *,int) ;
 int getlabel (int *,int) ;
 int * getpatt (int *,int,int*) ;
 int * newpatt (int *,int) ;
 int optimizecaptures (int *) ;
 int setinstcap (int *,int ,int,int,int) ;
 int skipchecks (int *,int ,int*) ;

__attribute__((used)) static int capture_aux (lua_State *L, int kind, int labelidx) {
  int l1, n;
  Instruction *p1 = getpatt(L, 1, &l1);
  int lc = skipchecks(p1, 0, &n);
  if (lc == l1) {

    Instruction *p = newpatt(L, l1 + 1);
    int label = getlabel(L, labelidx);
    p += addpatt(L, p, 1);
    setinstcap(p, IFullCapture, label, kind, n);
  }
  else {
    Instruction *op = newpatt(L, 1 + l1 + 1);
    Instruction *p = op;
    setinstcap(p++, IOpenCapture, getlabel(L, labelidx), kind, 0);
    p += addpatt(L, p, 1);
    setinstcap(p, ICloseCapture, 0, Cclose, 0);
    optimizecaptures(op);
  }
  return 1;
}
