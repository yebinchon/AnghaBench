
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Instruction ;



__attribute__((used)) static void invert (Instruction *p, int e) {
  int i;
  for (i = 0; i < e; i++, e--) {
    Instruction temp = p[i];
    p[i] = p[e];
    p[e] = temp;
  }
}
