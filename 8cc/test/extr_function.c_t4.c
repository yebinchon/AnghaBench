
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int ) ;
 int t4a (int*) ;

__attribute__((used)) static void t4() {
    int a[] = { 98 };
    expect(98, t4a(a));
}
