
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int ) ;
 int local_static2 () ;
 int local_static3 () ;

__attribute__((used)) static void local_static() {
    expect(6, local_static2());
    expect(7, local_static2());
    local_static3();
    expect(8, local_static2());
}
