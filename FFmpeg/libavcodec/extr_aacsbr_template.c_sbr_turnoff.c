
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* kx; int spectrum_params; TYPE_1__* data; scalar_t__* m; scalar_t__ ready_for_dequant; scalar_t__ start; } ;
struct TYPE_4__ {int* e_a; } ;
typedef int SpectrumParameters ;
typedef TYPE_2__ SpectralBandReplication ;


 int memset (int *,int,int) ;

__attribute__((used)) static void sbr_turnoff(SpectralBandReplication *sbr) {
    sbr->start = 0;
    sbr->ready_for_dequant = 0;

    sbr->kx[1] = 32;
    sbr->m[1] = 0;

    sbr->data[0].e_a[1] = sbr->data[1].e_a[1] = -1;
    memset(&sbr->spectrum_params, -1, sizeof(SpectrumParameters));
}
