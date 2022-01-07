
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int ,int) ;

__attribute__((used)) static void t7() {
    int a;
    int *p1 = &a + 1;
    int *p2 = 1 + &a;
    expect(0, p1 - p2);
}
