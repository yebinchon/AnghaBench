
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flex_ratio_max; int flex_ratio_min; int flex_ratio; int busFreq; int bus2tsc; int tscGranularity; int tscFCvtn2t; int tscFCvtt2n; int tscFreq; int busFCvtn2t; int busFCvtt2n; } ;
typedef TYPE_1__ tscInfo_t ;


 int bus2tsc ;
 int busFCvtn2t ;
 int busFCvtt2n ;
 int busFreq ;
 int flex_ratio ;
 int flex_ratio_max ;
 int flex_ratio_min ;
 int tscFCvtn2t ;
 int tscFCvtt2n ;
 int tscFreq ;
 int tscGranularity ;

void
tsc_get_info(tscInfo_t *info)
{
 info->busFCvtt2n = busFCvtt2n;
 info->busFCvtn2t = busFCvtn2t;
 info->tscFreq = tscFreq;
 info->tscFCvtt2n = tscFCvtt2n;
 info->tscFCvtn2t = tscFCvtn2t;
 info->tscGranularity = tscGranularity;
 info->bus2tsc = bus2tsc;
 info->busFreq = busFreq;
 info->flex_ratio = flex_ratio;
 info->flex_ratio_min = flex_ratio_min;
 info->flex_ratio_max = flex_ratio_max;
}
