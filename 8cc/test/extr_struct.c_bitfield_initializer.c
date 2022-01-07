
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char a; char b; } ;


 int expect (int,char) ;
 TYPE_1__ inittest ;

__attribute__((used)) static void bitfield_initializer() {
    expect(2, inittest.a);
    expect(4, inittest.b);

    struct { char a:4; char b:4; } x = { 2, 4 };
    expect(2, x.a);
    expect(4, x.b);
}
