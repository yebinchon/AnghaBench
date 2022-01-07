
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t7() {
    int a[3*3];
    a[8] = 68;
    expect(68, a[8]);
}
