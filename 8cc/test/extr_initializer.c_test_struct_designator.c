
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_struct_designator() {
    struct { int x; int y; } v1 = { .y = 1, .x = 5 };
    expect(5, v1.x);
    expect(1, v1.y);

    struct { int x; int y; } v2 = { .y = 7 };
    expect(7, v2.y);

    struct { int x; int y; int z; } v3 = { .y = 12, 17 };
    expect(12, v3.y);
    expect(17, v3.z);
}
