
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c3t2; int c3t1; int c1t2; int c1t3; } ;
typedef TYPE_1__ PokeyState ;



__attribute__((used)) static void event3_pure(PokeyState* ps, int p5v, int p4v, int p917v)
{
    ps->c3t2 = !ps->c3t2;
    ps->c3t1 = p5v;

    ps->c1t3 = ps->c1t2;
}
