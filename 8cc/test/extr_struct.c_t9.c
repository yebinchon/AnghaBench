
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t9() {
    struct tag9 { int a[3]; int b[3]; } x;
    x.a[0] = 73;
    expect(73, x.a[0]);
    x.b[1] = 74;
    expect(74, x.b[1]);
    expect(74, x.a[4]);
}
