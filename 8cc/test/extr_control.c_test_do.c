
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_do() {
    int acc = 0;
    int i = 0;
    do {
        acc = acc + i++;
    } while (i <= 100);
    expect(5050, acc);

    i = 0;
    do { i = 37; } while (0);
    expect(37, i);

    acc = 0;
    i = 0;
    do {
        if (i++ < 5) continue;
        acc += i;
        if (i == 9) break;
    } while (i < 10);
    expect(6 + 7 + 8 + 9, acc);

    i = 0;
    do {} while (i++ < 100);

    i = 0;
    do; while (i++ < 100);

    float v = 1;
    i = 70;
    do i++; while (v -= 0.5);
    expect(72, i);
}
