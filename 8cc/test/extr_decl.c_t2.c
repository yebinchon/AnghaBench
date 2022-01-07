
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t2() {
    int a = 1;
    int b = 48 + 2;
    int c = a + b;
    expect(102, c * 2);
}
