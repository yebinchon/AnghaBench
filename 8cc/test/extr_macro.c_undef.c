
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void undef() {
    int a = 3;

    expect(10, 10);

    expect(3, a);

    expect(16, 16);

}
