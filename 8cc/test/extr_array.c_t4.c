
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t4() {
    int a[3] = { 1, 2, 3 };
    expect(1, a[0]);
    expect(2, a[1]);
    expect(3, a[2]);
}
