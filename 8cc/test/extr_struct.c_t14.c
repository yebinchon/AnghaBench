
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int member_0; int member_1; int member_2; } ;


 int expect (int,int) ;

__attribute__((used)) static void t14() {
    struct { int a[3]; } v = { { 1, 2, 3 } };
    expect(2, v.a[1]);
}
