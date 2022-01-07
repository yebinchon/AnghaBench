
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;
 int print (char*) ;

void testmain() {
    print("comparison operators");
    expect(1, 1 < 2);
    expect(0, 2 < 1);
    expect(1, 1 == 1);
    expect(0, 1 == 2);
    expect(0, 1 != 1);
    expect(1, 1 != 2);

    expect(1, 1 <= 2);
    expect(1, 2 <= 2);
    expect(0, 2 <= 1);

    expect(0, 1 >= 2);
    expect(1, 2 >= 2);
    expect(1, 2 >= 1);

    int i = -1;
    expect(0, i >= 0);

    expect(1, 10.0 == 10.0);
    expect(0, 10.0 == 20.0);
    expect(0, 10.0 != 10.0);
    expect(1, 10.0 != 20.0);

    expect(1, 10.0f == 10.0f);
    expect(0, 10.0f == 20.0f);
    expect(0, 10.0f != 10.0f);
    expect(1, 10.0f != 20.0f);

    expect(1, 10.0f == 10.0);
    expect(0, 10.0f == 20.0);
    expect(0, 10.0f != 10.0);
    expect(1, 10.0f != 20.0);
}
