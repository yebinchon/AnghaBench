
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,char) ;

__attribute__((used)) static void unnamed() {
    struct {
        union {
            struct { int x; int y; };
            struct { char c[8]; };
        };
    } v;
    v.x = 1;
    v.y = 7;
    expect(1, v.c[0]);
    expect(7, v.c[4]);
}
