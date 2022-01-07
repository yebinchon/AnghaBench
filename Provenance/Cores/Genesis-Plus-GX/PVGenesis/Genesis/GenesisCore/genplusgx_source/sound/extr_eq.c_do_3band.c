
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double f1p0; double lf; int f1p1; int f1p2; int f1p3; double f2p0; double hf; int f2p1; int f2p2; int f2p3; double sdm3; double lg; double mg; double hg; int sdm2; int sdm1; } ;
typedef TYPE_1__ EQSTATE ;


 scalar_t__ vsa ;

double do_3band(EQSTATE * es, int sample)
{


    double l, m, h;



    es->f1p0 += (es->lf * ((double) sample - es->f1p0)) + vsa;
    es->f1p1 += (es->lf * (es->f1p0 - es->f1p1));
    es->f1p2 += (es->lf * (es->f1p1 - es->f1p2));
    es->f1p3 += (es->lf * (es->f1p2 - es->f1p3));

    l = es->f1p3;



    es->f2p0 += (es->hf * ((double) sample - es->f2p0)) + vsa;
    es->f2p1 += (es->hf * (es->f2p0 - es->f2p1));
    es->f2p2 += (es->hf * (es->f2p1 - es->f2p2));
    es->f2p3 += (es->hf * (es->f2p2 - es->f2p3));

    h = es->sdm3 - es->f2p3;





    m = sample - (h + l);



    l *= es->lg;
    m *= es->mg;
    h *= es->hg;



    es->sdm3 = es->sdm2;
    es->sdm2 = es->sdm1;
    es->sdm1 = sample;



    return (int) (l + m + h);
}
