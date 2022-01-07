
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void t5a(int *p) {
    expect(99, *p); p=p+1;
    expect(98, *p); p=p+1;
    expect(97, *p);
}
