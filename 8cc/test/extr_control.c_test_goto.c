
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_goto() {
    int acc = 0;
    goto x;
    acc = 5;
 x: expect(0, acc);

    int i = 0;
    acc = 0;
 y: if (i > 10) goto z;
    acc += i++;
    goto y;
 z: if (i > 11) goto a;
    expect(55, acc);
    i++;
    goto y;
 a:
    ;
}
