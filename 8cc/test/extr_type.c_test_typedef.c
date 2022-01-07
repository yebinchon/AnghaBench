
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_typedef() {
    typedef int integer;
    integer a = 5;
    expect(5, a);

    typedef int array[3];
    array b = { 1, 2, 3 };
    expect(2, b[1]);

    typedef struct tag { int x; } strtype;
    strtype c;
    c.x = 5;
    expect(5, c.x);

    typedef char x;
    {
        int x = 3;
        expect(3, x);
    }
    {
        int a = sizeof(x), x = 5, c = sizeof(x);
        expect(1, a);
        expect(5, x);
        expect(4, c);
    }
}
