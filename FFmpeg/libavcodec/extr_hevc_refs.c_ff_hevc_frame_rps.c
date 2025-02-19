
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int nb_refs; int* poc; scalar_t__* used; } ;
struct TYPE_10__ {TYPE_4__ long_term_rps; TYPE_2__* short_term_rps; } ;
struct TYPE_14__ {int poc; int * DPB; int * ref; TYPE_3__* rps; TYPE_1__ sh; } ;
struct TYPE_12__ {scalar_t__ nb_refs; } ;
struct TYPE_11__ {int num_delta_pocs; int* delta_poc; int num_negative_pics; int * used; } ;
typedef TYPE_2__ ShortTermRPS ;
typedef TYPE_3__ RefPicList ;
typedef TYPE_4__ LongTermRPS ;
typedef int HEVCFrame ;
typedef TYPE_5__ HEVCContext ;


 int FF_ARRAY_ELEMS (int *) ;
 int HEVC_FRAME_FLAG_LONG_REF ;
 int HEVC_FRAME_FLAG_SHORT_REF ;
 int LT_CURR ;
 int LT_FOLL ;
 int NB_RPS_TYPE ;
 int ST_CURR_AFT ;
 int ST_CURR_BEF ;
 int ST_FOLL ;
 int add_candidate_ref (TYPE_5__*,TYPE_3__*,int,int ) ;
 int ff_hevc_unref_frame (TYPE_5__*,int *,int ) ;
 int mark_ref (int *,int ) ;

int ff_hevc_frame_rps(HEVCContext *s)
{
    const ShortTermRPS *short_rps = s->sh.short_term_rps;
    const LongTermRPS *long_rps = &s->sh.long_term_rps;
    RefPicList *rps = s->rps;
    int i, ret = 0;

    if (!short_rps) {
        rps[0].nb_refs = rps[1].nb_refs = 0;
        return 0;
    }


    for (i = 0; i < FF_ARRAY_ELEMS(s->DPB); i++) {
        HEVCFrame *frame = &s->DPB[i];

        if (frame == s->ref)
            continue;

        mark_ref(frame, 0);
    }

    for (i = 0; i < NB_RPS_TYPE; i++)
        rps[i].nb_refs = 0;


    for (i = 0; i < short_rps->num_delta_pocs; i++) {
        int poc = s->poc + short_rps->delta_poc[i];
        int list;

        if (!short_rps->used[i])
            list = ST_FOLL;
        else if (i < short_rps->num_negative_pics)
            list = ST_CURR_BEF;
        else
            list = ST_CURR_AFT;

        ret = add_candidate_ref(s, &rps[list], poc, HEVC_FRAME_FLAG_SHORT_REF);
        if (ret < 0)
            goto fail;
    }


    for (i = 0; i < long_rps->nb_refs; i++) {
        int poc = long_rps->poc[i];
        int list = long_rps->used[i] ? LT_CURR : LT_FOLL;

        ret = add_candidate_ref(s, &rps[list], poc, HEVC_FRAME_FLAG_LONG_REF);
        if (ret < 0)
            goto fail;
    }

fail:

    for (i = 0; i < FF_ARRAY_ELEMS(s->DPB); i++)
        ff_hevc_unref_frame(s, &s->DPB[i], 0);

    return ret;
}
