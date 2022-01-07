
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; int c; } ;
struct TYPE_4__ {int a; TYPE_1__ y; } ;


 int expect (int,int) ;
 TYPE_2__ v10 ;

__attribute__((used)) static void t10() {
    v10.a = 71;
    v10.y.b = 3;
    v10.y.c = 3;
    expect(77, v10.a + v10.y.b + v10.y.c);
}
