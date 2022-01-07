
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t2() {
    struct { int a; int b; } x;
    x.a = 61;
    x.b = 2;
    expect(63, x.a + x.b);
}
