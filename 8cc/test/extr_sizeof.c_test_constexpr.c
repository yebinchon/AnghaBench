
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int a ;


 int expect (int,int) ;

__attribute__((used)) static void test_constexpr() {
    char a[sizeof(char[4])];
    expect(4, sizeof(a));
}
