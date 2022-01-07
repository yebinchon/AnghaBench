
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Instruction ;


 int isnofail (int *) ;
 scalar_t__ sizei (int *) ;

__attribute__((used)) static int nofail (Instruction *p, int l) {
  int i;
  for (i = 0; i < l; i += sizei(p + i)) {
    if (!isnofail(p + i)) return 0;
  }
  return 1;
}
