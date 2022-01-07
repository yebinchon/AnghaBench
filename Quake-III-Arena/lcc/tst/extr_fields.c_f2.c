
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct baz {int a; int b; } ;


 int f1 (struct baz*) ;
 scalar_t__ i ;

f2(struct baz *p) {
 p->a = (i==0);
 p->b = (f1(p),0);
}
