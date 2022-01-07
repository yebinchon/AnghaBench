
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void bitfield_unnamed() {
    union {
        int i;
        struct { char a:4; char b:4; char : 8; };
    } x = { 0 };
    x.i = 0;
    x.a = 2;
    x.b = 4;
    expect(2, x.a);
    expect(4, x.b);
    expect(66, x.i);

    union {
        int i;
        struct { char a:4; char :0; char b:4; };
    } y = { 0 };
    y.a = 2;
    y.b = 4;
    expect(2, y.a);
    expect(4, y.b);
    expect(1026, y.i);
}
