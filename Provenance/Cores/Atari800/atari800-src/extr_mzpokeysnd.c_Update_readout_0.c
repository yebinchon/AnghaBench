
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int readout_0; scalar_t__ c0sw4; scalar_t__ c0vo; } ;
typedef TYPE_1__ PokeyState ;


 int readout0_hipass ;
 int readout0_normal ;
 int readout0_vo ;

__attribute__((used)) static void Update_readout_0(PokeyState* ps)
{
    if(ps->c0vo)
        ps->readout_0 = readout0_vo;
    else if(ps->c0sw4)
        ps->readout_0 = readout0_hipass;
    else
        ps->readout_0 = readout0_normal;
}
