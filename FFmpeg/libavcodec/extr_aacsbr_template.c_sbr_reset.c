
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int avctx; } ;
struct TYPE_10__ {int spectrum_params; } ;
typedef TYPE_1__ SpectralBandReplication ;
typedef TYPE_2__ AACContext ;


 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 int sbr_make_f_derived (TYPE_2__*,TYPE_1__*) ;
 int sbr_make_f_master (TYPE_2__*,TYPE_1__*,int *) ;
 int sbr_turnoff (TYPE_1__*) ;

__attribute__((used)) static void sbr_reset(AACContext *ac, SpectralBandReplication *sbr)
{
    int err;
    err = sbr_make_f_master(ac, sbr, &sbr->spectrum_params);
    if (err >= 0)
        err = sbr_make_f_derived(ac, sbr);
    if (err < 0) {
        av_log(ac->avctx, AV_LOG_ERROR,
               "SBR reset failed. Switching SBR to pure upsampling mode.\n");
        sbr_turnoff(sbr);
    }
}
