
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_not() {
    expect(-1, ~0);
    expect(-3, ~2);
    expect(0, ~-1);
}
