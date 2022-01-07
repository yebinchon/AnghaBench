
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_20__ ;
typedef struct TYPE_33__ TYPE_1__ ;


struct TYPE_40__ {int err_recognition; TYPE_3__* hwaccel; int skip_frame; } ;
struct TYPE_39__ {int type; int raw_size; int raw_data; int temporal_id; int gb; } ;
struct TYPE_34__ {TYPE_2__* sps; } ;
struct TYPE_33__ {int num_entry_point_offsets; int first_slice_in_pic_flag; int slice_type; int dependent_slice_segment_flag; } ;
struct TYPE_38__ {int nal_unit_type; int is_decoded; int const first_nal_type; int threads_number; int seq_decode; TYPE_7__* avctx; void* max_ra; TYPE_20__ ps; TYPE_1__ sh; int ref; int overlap; void* poc; int sei; int apply_defdispwin; int temporal_id; TYPE_4__* HEVClc; } ;
struct TYPE_37__ {int gb; } ;
struct TYPE_36__ {int (* decode_params ) (TYPE_7__*,int,int ,int ) ;int (* start_frame ) (TYPE_7__*,int *,int ) ;int (* decode_slice ) (TYPE_7__*,int ,int ) ;} ;
struct TYPE_35__ {int ctb_width; int ctb_height; } ;
typedef TYPE_4__ HEVCLocalContext ;
typedef TYPE_5__ HEVCContext ;
typedef TYPE_6__ H2645NAL ;
typedef int GetBitContext ;


 int AVDISCARD_BIDIR ;
 int AVDISCARD_NONINTRA ;
 int AVDISCARD_NONKEY ;
 int AVERROR_INVALIDDATA ;
 int AV_EF_EXPLODE ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;
 int HEVC_SLICE_B ;
 int HEVC_SLICE_I ;
 void* INT_MAX ;
 void* INT_MIN ;
 int IS_BLA (TYPE_5__*) ;
 int IS_IDR (TYPE_5__*) ;
 int IS_IRAP (TYPE_5__*) ;
 int av_log (TYPE_7__*,int ,char*,...) ;
 int ff_hevc_decode_nal_pps (int *,TYPE_7__*,TYPE_20__*) ;
 int ff_hevc_decode_nal_sei (int *,TYPE_7__*,int *,TYPE_20__*,int) ;
 int ff_hevc_decode_nal_sps (int *,TYPE_7__*,TYPE_20__*,int ) ;
 int ff_hevc_decode_nal_vps (int *,TYPE_7__*,TYPE_20__*) ;
 int ff_hevc_slice_rpl (TYPE_5__*) ;
 int hevc_frame_start (TYPE_5__*) ;
 int hls_slice_data (TYPE_5__*) ;
 int hls_slice_data_wpp (TYPE_5__*,TYPE_6__ const*) ;
 int hls_slice_header (TYPE_5__*) ;
 int stub1 (TYPE_7__*,int,int ,int ) ;
 int stub2 (TYPE_7__*,int,int ,int ) ;
 int stub3 (TYPE_7__*,int,int ,int ) ;
 int stub4 (TYPE_7__*,int,int ,int ) ;
 int stub5 (TYPE_7__*,int *,int ) ;
 int stub6 (TYPE_7__*,int ,int ) ;

__attribute__((used)) static int decode_nal_unit(HEVCContext *s, const H2645NAL *nal)
{
    HEVCLocalContext *lc = s->HEVClc;
    GetBitContext *gb = &lc->gb;
    int ctb_addr_ts, ret;

    *gb = nal->gb;
    s->nal_unit_type = nal->type;
    s->temporal_id = nal->temporal_id;

    switch (s->nal_unit_type) {
    case 128:
        if (s->avctx->hwaccel && s->avctx->hwaccel->decode_params) {
            ret = s->avctx->hwaccel->decode_params(s->avctx,
                                                   nal->type,
                                                   nal->raw_data,
                                                   nal->raw_size);
            if (ret < 0)
                goto fail;
        }
        ret = ff_hevc_decode_nal_vps(gb, s->avctx, &s->ps);
        if (ret < 0)
            goto fail;
        break;
    case 135:
        if (s->avctx->hwaccel && s->avctx->hwaccel->decode_params) {
            ret = s->avctx->hwaccel->decode_params(s->avctx,
                                                   nal->type,
                                                   nal->raw_data,
                                                   nal->raw_size);
            if (ret < 0)
                goto fail;
        }
        ret = ff_hevc_decode_nal_sps(gb, s->avctx, &s->ps,
                                     s->apply_defdispwin);
        if (ret < 0)
            goto fail;
        break;
    case 142:
        if (s->avctx->hwaccel && s->avctx->hwaccel->decode_params) {
            ret = s->avctx->hwaccel->decode_params(s->avctx,
                                                   nal->type,
                                                   nal->raw_data,
                                                   nal->raw_size);
            if (ret < 0)
                goto fail;
        }
        ret = ff_hevc_decode_nal_pps(gb, s->avctx, &s->ps);
        if (ret < 0)
            goto fail;
        break;
    case 137:
    case 136:
        if (s->avctx->hwaccel && s->avctx->hwaccel->decode_params) {
            ret = s->avctx->hwaccel->decode_params(s->avctx,
                                                   nal->type,
                                                   nal->raw_data,
                                                   nal->raw_size);
            if (ret < 0)
                goto fail;
        }
        ret = ff_hevc_decode_nal_sei(gb, s->avctx, &s->sei, &s->ps, s->nal_unit_type);
        if (ret < 0)
            goto fail;
        break;
    case 131:
    case 132:
    case 130:
    case 129:
    case 134:
    case 133:
    case 150:
    case 149:
    case 151:
    case 143:
    case 144:
    case 148:
    case 141:
    case 140:
    case 139:
    case 138:
        ret = hls_slice_header(s);
        if (ret < 0)
            return ret;
        if (ret == 1) {
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }


        if (
            (s->avctx->skip_frame >= AVDISCARD_BIDIR && s->sh.slice_type == HEVC_SLICE_B) ||
            (s->avctx->skip_frame >= AVDISCARD_NONINTRA && s->sh.slice_type != HEVC_SLICE_I) ||
            (s->avctx->skip_frame >= AVDISCARD_NONKEY && !IS_IRAP(s))) {
            break;
        }

        if (s->sh.first_slice_in_pic_flag) {
            if (s->max_ra == INT_MAX) {
                if (s->nal_unit_type == 148 || IS_BLA(s)) {
                    s->max_ra = s->poc;
                } else {
                    if (IS_IDR(s))
                        s->max_ra = INT_MIN;
                }
            }

            if ((s->nal_unit_type == 138 || s->nal_unit_type == 139) &&
                s->poc <= s->max_ra) {
                s->is_decoded = 0;
                break;
            } else {
                if (s->nal_unit_type == 138 && s->poc > s->max_ra)
                    s->max_ra = INT_MIN;
            }

            s->overlap ++;
            ret = hevc_frame_start(s);
            if (ret < 0)
                return ret;
        } else if (!s->ref) {
            av_log(s->avctx, AV_LOG_ERROR, "First slice in a frame missing.\n");
            goto fail;
        }

        if (s->nal_unit_type != s->first_nal_type) {
            av_log(s->avctx, AV_LOG_ERROR,
                   "Non-matching NAL types of the VCL NALUs: %d %d\n",
                   s->first_nal_type, s->nal_unit_type);
            return AVERROR_INVALIDDATA;
        }

        if (!s->sh.dependent_slice_segment_flag &&
            s->sh.slice_type != HEVC_SLICE_I) {
            ret = ff_hevc_slice_rpl(s);
            if (ret < 0) {
                av_log(s->avctx, AV_LOG_WARNING,
                       "Error constructing the reference lists for the current slice.\n");
                goto fail;
            }
        }

        if (s->sh.first_slice_in_pic_flag && s->avctx->hwaccel) {
            ret = s->avctx->hwaccel->start_frame(s->avctx, ((void*)0), 0);
            if (ret < 0)
                goto fail;
        }

        if (s->avctx->hwaccel) {
            ret = s->avctx->hwaccel->decode_slice(s->avctx, nal->raw_data, nal->raw_size);
            if (ret < 0)
                goto fail;
        } else {
            if (s->threads_number > 1 && s->sh.num_entry_point_offsets > 0)
                ctb_addr_ts = hls_slice_data_wpp(s, nal);
            else
                ctb_addr_ts = hls_slice_data(s);
            if (ctb_addr_ts >= (s->ps.sps->ctb_width * s->ps.sps->ctb_height)) {
                s->is_decoded = 1;
            }

            if (ctb_addr_ts < 0) {
                ret = ctb_addr_ts;
                goto fail;
            }
        }
        break;
    case 146:
    case 147:
        s->seq_decode = (s->seq_decode + 1) & 0xff;
        s->max_ra = INT_MAX;
        break;
    case 152:
    case 145:
        break;
    default:
        av_log(s->avctx, AV_LOG_INFO,
               "Skipping NAL unit %d\n", s->nal_unit_type);
    }

    return 0;
fail:
    if (s->avctx->err_recognition & AV_EF_EXPLODE)
        return ret;
    return 0;
}
