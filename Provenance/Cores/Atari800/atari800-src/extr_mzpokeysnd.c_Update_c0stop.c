
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* readout_0 ) (TYPE_1__*) ;int outvol_0; } ;
typedef TYPE_1__ PokeyState ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void Update_c0stop(PokeyState* ps)
{
    ps->outvol_0 = ps->readout_0(ps);
}
