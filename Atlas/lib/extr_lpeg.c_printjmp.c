
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Instruction ;


 int const* dest (int ,int const*) ;
 int printf (char*,long) ;

__attribute__((used)) static void printjmp (const Instruction *op, const Instruction *p) {
  printf("-> %ld", (long)(dest(0, p) - op));
}
