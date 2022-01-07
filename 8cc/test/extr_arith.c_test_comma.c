
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;
 int expectf (double,int) ;

__attribute__((used)) static void test_comma() {
    expect(3, (1, 3));
    expectf(7.0, (1, 3, 5, 7.0));
}
