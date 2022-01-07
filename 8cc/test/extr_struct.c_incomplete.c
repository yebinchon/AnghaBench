
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; } ;


 int expect (int,int ) ;

__attribute__((used)) static void incomplete() {
    struct tag1;
    struct tag2 { struct tag1 *p; };
    struct tag1 { int x; };

    struct tag1 v1 = { 3 };
    struct tag2 v2 = { &v1 };
    expect(3, v2.p->x);
}
