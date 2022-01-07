
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int readout_2; scalar_t__ c2vo; } ;
typedef TYPE_1__ PokeyState ;


 int readout2_normal ;
 int readout2_vo ;

__attribute__((used)) static void Update_readout_2(PokeyState* ps)
{
    if(ps->c2vo)
        ps->readout_2 = readout2_vo;
    else
        ps->readout_2 = readout2_normal;
}
