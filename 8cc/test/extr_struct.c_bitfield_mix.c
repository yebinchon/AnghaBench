
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void bitfield_mix() {
    union {
        int i;
        struct { char a:5; int b:5; };
    } x;
    x.a = 10;
    x.b = 11;
    expect(10, x.a);
    expect(11, x.b);
    expect(362, x.i);
}
