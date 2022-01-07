
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t1() {
    union { int a; int b; } x;
    x.a = 90;
    expect(90, x.b);
}
