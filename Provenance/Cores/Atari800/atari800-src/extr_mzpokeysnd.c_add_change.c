
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qev_t ;
struct TYPE_3__ {size_t qeend; int curtick; int * qet; int * qev; } ;
typedef TYPE_1__ PokeyState ;


 size_t filter_size ;

__attribute__((used)) static void add_change(PokeyState* ps, qev_t a)
{
    ps->qev[ps->qeend] = a;
    ps->qet[ps->qeend] = ps->curtick;
    ++ps->qeend;
    if(ps->qeend >= filter_size)
        ps->qeend = 0;
}
