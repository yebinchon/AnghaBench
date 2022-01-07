
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct baz {int a; int b; } ;


 int printf (char*,...) ;

f1(struct baz *p) {
 p->a = p->b = 0;
 if (p->b)
  printf("p->b != 0!\n");
 p->a = 0x3; p->b = 0xf;
 printf("p->a = 0x%x, p->b = 0x%x\n", p->a, p->b);
}
