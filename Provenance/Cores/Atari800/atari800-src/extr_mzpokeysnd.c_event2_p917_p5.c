
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c2t1; int c2t2; int c0t2; int c0t3; } ;
typedef TYPE_1__ PokeyState ;



__attribute__((used)) static void event2_p917_p5(PokeyState* ps, int p5v, int p4v, int p917v)
{
    if(ps->c2t1)
        ps->c2t2 = p917v;
    ps->c2t1 = p5v;

    ps->c0t3 = ps->c0t2;
}
