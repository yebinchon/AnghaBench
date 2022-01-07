
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_logor() {
    expect(1, 0 || 3);
    expect(1, 5 || 0);
    expect(0, 0 || 0);
}
