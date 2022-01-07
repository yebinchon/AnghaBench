
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Instruction ;


 int invert (int *,int) ;

__attribute__((used)) static void rotate (Instruction *p, int e, int n) {
  invert(p, n - 1);
  invert(p + n, e - n);
  invert(p, e);
}
