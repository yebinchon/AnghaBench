
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mdivk; int c0divpos; int c0divstart; int c0divstart_p; int c0diva; int c0vo; int c0stop; int c1divpos; int c1divstart; int c1diva; int c1vo; int c1stop; int c2divpos; int c2divstart; int c2divstart_p; int c2diva; int c2stop; int c3divpos; int c3divstart; int c3diva; int c3stop; scalar_t__ speaker; scalar_t__ outvol_3; scalar_t__ vol3; scalar_t__ c3vo; scalar_t__ c3sw3; scalar_t__ c3sw2; scalar_t__ c3sw1; scalar_t__ c3t2; scalar_t__ c3t1; int event_3; int readout_3; scalar_t__ outvol_2; scalar_t__ vol2; scalar_t__ c2vo; scalar_t__ c2sw3; scalar_t__ c2sw2; scalar_t__ c2sw1; scalar_t__ c2t2; scalar_t__ c2t1; int event_2; int readout_2; scalar_t__ outvol_1; scalar_t__ vol1; scalar_t__ c1sw4; scalar_t__ c1sw3; scalar_t__ c1sw2; scalar_t__ c1sw1; scalar_t__ c1t3; scalar_t__ c1t2; scalar_t__ c1t1; int event_1; int readout_1; scalar_t__ outvol_0; scalar_t__ vol0; scalar_t__ c0sw4; scalar_t__ c0sw3; scalar_t__ c0sw2; scalar_t__ c0sw1; scalar_t__ c0t3; scalar_t__ c0t2; scalar_t__ c0t1; int event_0; int readout_0; scalar_t__ forcero; scalar_t__ outvol_all; scalar_t__ skctl; scalar_t__ c3_f2; scalar_t__ c2_hf; scalar_t__ c1_f0; scalar_t__ c0_hf; scalar_t__ selpoly9; scalar_t__ qeend; scalar_t__ qebeg; scalar_t__ ovola; scalar_t__ poly17pos; scalar_t__ poly9pos; scalar_t__ poly5pos; scalar_t__ poly4pos; } ;
typedef TYPE_1__ PokeyState ;


 int event0_pure ;
 int event1_pure ;
 int event2_pure ;
 int event3_pure ;
 int readout0_normal ;
 int readout1_normal ;
 int readout2_normal ;
 int readout3_normal ;

__attribute__((used)) static void ResetPokeyState(PokeyState* ps)
{

    ps->poly4pos = 0;
    ps->poly5pos = 0;
    ps->poly9pos = 0;
    ps->poly17pos = 0;


    ps->ovola = 0;
    ps->qebeg = 0;
    ps->qeend = 0;


    ps->mdivk = 28;

    ps->selpoly9 = 0;
    ps->c0_hf = 0;
    ps->c1_f0 = 0;
    ps->c2_hf = 0;
    ps->c3_f2 = 0;


    ps->skctl = 0;

    ps->outvol_all = 0;
    ps->forcero = 0;


    ps->readout_0 = readout0_normal;
    ps->event_0 = event0_pure;

    ps->c0divpos = 1000;
    ps->c0divstart = 1000;
    ps->c0divstart_p = 1000;
    ps->c0diva = 255;

    ps->c0t1 = 0;
    ps->c0t2 = 0;
    ps->c0t3 = 0;

    ps->c0sw1 = 0;
    ps->c0sw2 = 0;
    ps->c0sw3 = 0;
    ps->c0sw4 = 0;
    ps->c0vo = 1;


    ps->c0stop = 1;


    ps->vol0 = 0;

    ps->outvol_0 = 0;



    ps->readout_1 = readout1_normal;
    ps->event_1 = event1_pure;

    ps->c1divpos = 1000;
    ps->c1divstart = 1000;
    ps->c1diva = 255;

    ps->c1t1 = 0;
    ps->c1t2 = 0;
    ps->c1t3 = 0;

    ps->c1sw1 = 0;
    ps->c1sw2 = 0;
    ps->c1sw3 = 0;
    ps->c1sw4 = 0;
    ps->c1vo = 1;


    ps->c1stop = 1;


    ps->vol1 = 0;

    ps->outvol_1 = 0;


    ps->readout_2 = readout2_normal;
    ps->event_2 = event2_pure;

    ps->c2divpos = 1000;
    ps->c2divstart = 1000;
    ps->c2divstart_p = 1000;
    ps->c2diva = 255;

    ps->c2t1 = 0;
    ps->c2t2 = 0;

    ps->c2sw1 = 0;
    ps->c2sw2 = 0;
    ps->c2sw3 = 0;

    ps->c2vo = 0;


    ps->c2stop = 1;


    ps->vol2 = 0;

    ps->outvol_2 = 0;


    ps->readout_3 = readout3_normal;
    ps->event_3 = event3_pure;

    ps->c3divpos = 1000;
    ps->c3divstart = 1000;
    ps->c3diva = 255;

    ps->c3t1 = 0;
    ps->c3t2 = 0;

    ps->c3sw1 = 0;
    ps->c3sw2 = 0;
    ps->c3sw3 = 0;

    ps->c3vo = 0;


    ps->c3stop = 1;


    ps->vol3 = 0;

    ps->outvol_3 = 0;


    ps->speaker = 0;
}
