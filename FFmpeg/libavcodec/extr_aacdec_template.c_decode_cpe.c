
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_24__ {void* present; } ;
struct TYPE_25__ {int* use_kb_window; int max_sfb; TYPE_6__ ltp; scalar_t__ predictor_present; } ;
struct TYPE_23__ {TYPE_2__* oc; int avctx; } ;
struct TYPE_22__ {TYPE_10__* ch; } ;
struct TYPE_20__ {scalar_t__ object_type; } ;
struct TYPE_21__ {TYPE_1__ m4ac; } ;
struct TYPE_19__ {TYPE_8__ ics; } ;
typedef int GetBitContext ;
typedef TYPE_3__ ChannelElement ;
typedef TYPE_4__ AACContext ;


 scalar_t__ AOT_AAC_MAIN ;
 scalar_t__ AOT_ER_AAC_ELD ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int apply_intensity_stereo (TYPE_4__*,TYPE_3__*,int) ;
 int apply_mid_side_stereo (TYPE_4__*,TYPE_3__*) ;
 int apply_prediction (TYPE_4__*,TYPE_10__*) ;
 int av_log (int ,int ,char*) ;
 int decode_ics (TYPE_4__*,TYPE_10__*,int *,int,int ) ;
 scalar_t__ decode_ics_info (TYPE_4__*,TYPE_8__*,int *) ;
 int decode_ltp (TYPE_6__*,int *,int ) ;
 int decode_mid_side_stereo (TYPE_3__*,int *,int) ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static int decode_cpe(AACContext *ac, GetBitContext *gb, ChannelElement *cpe)
{
    int i, ret, common_window, ms_present = 0;
    int eld_syntax = ac->oc[1].m4ac.object_type == AOT_ER_AAC_ELD;

    common_window = eld_syntax || get_bits1(gb);
    if (common_window) {
        if (decode_ics_info(ac, &cpe->ch[0].ics, gb))
            return AVERROR_INVALIDDATA;
        i = cpe->ch[1].ics.use_kb_window[0];
        cpe->ch[1].ics = cpe->ch[0].ics;
        cpe->ch[1].ics.use_kb_window[1] = i;
        if (cpe->ch[1].ics.predictor_present &&
            (ac->oc[1].m4ac.object_type != AOT_AAC_MAIN))
            if ((cpe->ch[1].ics.ltp.present = get_bits(gb, 1)))
                decode_ltp(&cpe->ch[1].ics.ltp, gb, cpe->ch[1].ics.max_sfb);
        ms_present = get_bits(gb, 2);
        if (ms_present == 3) {
            av_log(ac->avctx, AV_LOG_ERROR, "ms_present = 3 is reserved.\n");
            return AVERROR_INVALIDDATA;
        } else if (ms_present)
            decode_mid_side_stereo(cpe, gb, ms_present);
    }
    if ((ret = decode_ics(ac, &cpe->ch[0], gb, common_window, 0)))
        return ret;
    if ((ret = decode_ics(ac, &cpe->ch[1], gb, common_window, 0)))
        return ret;

    if (common_window) {
        if (ms_present)
            apply_mid_side_stereo(ac, cpe);
        if (ac->oc[1].m4ac.object_type == AOT_AAC_MAIN) {
            apply_prediction(ac, &cpe->ch[0]);
            apply_prediction(ac, &cpe->ch[1]);
        }
    }

    apply_intensity_stereo(ac, cpe, ms_present);
    return 0;
}
