
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Instruction ;


 int MAXOFF ;
 scalar_t__ ischeck (int *) ;
 int op_step (int *) ;
 scalar_t__ sizei (int *) ;

__attribute__((used)) static int skipchecks (Instruction *p, int up, int *pn) {
  int i, n = 0;
  for (i = 0; ischeck(p + i); i += sizei(p + i)) {
    int st = op_step(p + i);
    if (n + st > MAXOFF - up) break;
    n += st;
  }
  *pn = n;
  return i;
}
