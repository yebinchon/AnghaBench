
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void bitfield_union() {
    union { int a : 10; char b: 5; char c: 5; } x;
    x.a = 2;
    expect(2, x.a);
    expect(2, x.b);
    expect(2, x.c);
}
