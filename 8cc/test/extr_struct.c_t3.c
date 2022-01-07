
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t3() {
    struct { int a; struct { char b; int c; } y; } x;
    x.a = 61;
    x.y.b = 3;
    x.y.c = 3;
    expect(67, x.a + x.y.b + x.y.c);
}
