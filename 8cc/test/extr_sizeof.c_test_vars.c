
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int d ;
typedef int c ;
typedef int b ;
typedef int a ;


 int expect (int,int) ;

__attribute__((used)) static void test_vars() {
    char a[] = { 1, 2, 3 };
    expect(3, sizeof(a));
    char b[] = "abc";
    expect(4, sizeof(b));
    expect(1, sizeof(b[0]));
    expect(1, sizeof((b[0])));
    expect(1, sizeof((b)[0]));
    char *c[5];
    expect(40, sizeof(c));
    char *(*d)[3];
    expect(8, sizeof(d));
    expect(24, sizeof(*d));
    expect(8, sizeof(**d));
    expect(1, sizeof(***d));
    expect(4, sizeof((int)a));
}
