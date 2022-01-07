
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t5() {
    int a[] = { 20, 30, 40 };
    int *b = a + 1;
    expect(30, *b);
}
