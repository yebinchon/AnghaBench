
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rcbaAreap; int rcbaArea; int hpet2bus; int bus2hpet; int hpet2tsc; int tsc2hpet; int hpetCvtn2t; int hpetCvtt2n; } ;
typedef TYPE_1__ hpetInfo_t ;


 int bus2hpet ;
 int hpet2bus ;
 int hpet2tsc ;
 int hpetArea ;
 int hpetAreap ;
 int hpetCvtn2t ;
 int hpetCvtt2n ;
 int tsc2hpet ;

void
hpet_get_info(hpetInfo_t *info)
{
    info->hpetCvtt2n = hpetCvtt2n;
    info->hpetCvtn2t = hpetCvtn2t;
    info->tsc2hpet = tsc2hpet;
    info->hpet2tsc = hpet2tsc;
    info->bus2hpet = bus2hpet;
    info->hpet2bus = hpet2bus;





    info->rcbaArea = hpetArea;
    info->rcbaAreap = hpetAreap;
}
