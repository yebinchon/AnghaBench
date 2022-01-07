
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int booltest1 (int) ;
 int booltest2 (int) ;
 int expect (int,int ) ;

__attribute__((used)) static void test_bool() {
    expect(0, booltest1(256));
    expect(1, booltest1(257));
    expect(1, booltest2(512));
    expect(1, booltest2(513));
}
