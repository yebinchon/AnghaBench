
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t3(int a, int b, int c, int d, int e, int f) {
    expect(1, a);
    expect(2, b);
    expect(3, c);
    expect(4, d);
    expect(5, e);
    expect(6, f);
}
