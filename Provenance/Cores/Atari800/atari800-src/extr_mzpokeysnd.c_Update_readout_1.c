
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int readout_1; scalar_t__ c1sw4; scalar_t__ c1vo; } ;
typedef TYPE_1__ PokeyState ;


 int readout1_hipass ;
 int readout1_normal ;
 int readout1_vo ;

__attribute__((used)) static void Update_readout_1(PokeyState* ps)
{
    if(ps->c1vo)
        ps->readout_1 = readout1_vo;
    else if(ps->c1sw4)
        ps->readout_1 = readout1_hipass;
    else
        ps->readout_1 = readout1_normal;
}
