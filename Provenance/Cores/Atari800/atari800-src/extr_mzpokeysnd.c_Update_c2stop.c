
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* readout_2 ) (TYPE_1__*) ;int outvol_2; } ;
typedef TYPE_1__ PokeyState ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void Update_c2stop(PokeyState* ps)
{
    ps->outvol_2 = ps->readout_2(ps);
}
