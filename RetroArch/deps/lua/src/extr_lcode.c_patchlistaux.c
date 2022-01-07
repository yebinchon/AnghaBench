
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;


 int NO_JUMP ;
 int fixjump (int *,int,int) ;
 int getjump (int *,int) ;
 scalar_t__ patchtestreg (int *,int,int) ;

__attribute__((used)) static void patchlistaux (FuncState *fs, int list, int vtarget, int reg,
                          int dtarget) {
  while (list != NO_JUMP) {
    int next = getjump(fs, list);
    if (patchtestreg(fs, list, reg))
      fixjump(fs, list, vtarget);
    else
      fixjump(fs, list, dtarget);
    list = next;
  }
}
