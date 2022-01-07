
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t1() {
    struct { int a; } x;
    x.a = 61;
    expect(61, x.a);
}
