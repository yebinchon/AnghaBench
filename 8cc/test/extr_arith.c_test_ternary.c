
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_ternary() {
    expect(51, (1 + 2) ? 51 : 52);
    expect(52, (1 - 1) ? 51 : 52);
    expect(26, (1 - 1) ? 51 : 52 / 2);
    expect(17, (1 - 0) ? 51 / 3 : 52);

    expect(52, 0 ?: 52);
    expect(3, (1 + 2) ?: 52);
}
