
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double lg; double mg; double hg; int lf; int hf; } ;
typedef TYPE_1__ EQSTATE ;


 double M_PI ;
 int memset (TYPE_1__*,int ,int) ;
 int sin (double) ;

void init_3band_state(EQSTATE * es, int lowfreq, int highfreq, int mixfreq)
{


    memset(es, 0, sizeof(EQSTATE));



    es->lg = 1.0;
    es->mg = 1.0;
    es->hg = 1.0;



    es->lf = 2 * sin(M_PI * ((double) lowfreq / (double) mixfreq));
    es->hf = 2 * sin(M_PI * ((double) highfreq / (double) mixfreq));
}
