
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int quant; int vop_flags; int motion_flags; int vol_flags; TYPE_1__* zone; } ;
typedef TYPE_2__ xvid_plg_data_t ;
struct xvid_context {int dummy; } ;
struct TYPE_4__ {scalar_t__ mode; } ;


 int XVID_ME_ADVANCEDDIAMOND16 ;
 int XVID_ME_BFRAME_EARLYSTOP ;
 int XVID_ME_CHROMA_BVOP ;
 int XVID_ME_CHROMA_PVOP ;
 int XVID_ME_EXTSEARCH16 ;
 int XVID_ME_FASTREFINE16 ;
 int XVID_ME_FAST_MODEINTERPOLATE ;
 int XVID_ME_SKIP_DELTASEARCH ;
 int XVID_VOL_GMC ;
 int XVID_VOP_FAST_MODEDECISION_RD ;
 int XVID_VOP_HQACPRED ;
 int XVID_VOP_INTER4V ;
 int XVID_VOP_MODEDECISION_RD ;
 int XVID_VOP_TRELLISQUANT ;
 scalar_t__ XVID_ZONE_QUANT ;

__attribute__((used)) static int xvid_ff_2pass_before(struct xvid_context *ref,
                                xvid_plg_data_t *param)
{
    int motion_remove;
    int motion_replacements;
    int vop_remove;


    if (param->zone && param->zone->mode == XVID_ZONE_QUANT)
        return 0;


    param->quant = 2;


    motion_remove = ~XVID_ME_CHROMA_PVOP &
                          ~XVID_ME_CHROMA_BVOP &
                          ~XVID_ME_EXTSEARCH16 &
                          ~XVID_ME_ADVANCEDDIAMOND16;
    motion_replacements = XVID_ME_FAST_MODEINTERPOLATE |
                          XVID_ME_SKIP_DELTASEARCH |
                          XVID_ME_FASTREFINE16 |
                          XVID_ME_BFRAME_EARLYSTOP;
    vop_remove = ~XVID_VOP_MODEDECISION_RD &
                          ~XVID_VOP_FAST_MODEDECISION_RD &
                          ~XVID_VOP_TRELLISQUANT &
                          ~XVID_VOP_INTER4V &
                          ~XVID_VOP_HQACPRED;

    param->vol_flags &= ~XVID_VOL_GMC;
    param->vop_flags &= vop_remove;
    param->motion_flags &= motion_remove;
    param->motion_flags |= motion_replacements;

    return 0;
}
