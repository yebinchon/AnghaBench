
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_unary() {
    char x = 2;
    short y = 2;
    int z = 2;
    expect(-2, -x);
    expect(-2, -y);
    expect(-2, -z);
}
