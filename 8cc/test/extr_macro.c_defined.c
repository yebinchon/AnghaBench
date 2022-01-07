
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void defined() {
    int a = 0;



    expect(1, a);



    expect(2, a);



    a = 4;

    expect(4, a);
}
