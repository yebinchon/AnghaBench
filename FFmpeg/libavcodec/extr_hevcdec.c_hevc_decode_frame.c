
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;
typedef struct TYPE_19__ TYPE_13__ ;


typedef int uint8_t ;
struct TYPE_26__ {int err_recognition; TYPE_1__* hwaccel; TYPE_4__* priv_data; } ;
struct TYPE_25__ {int size; int data; } ;
struct TYPE_22__ {scalar_t__ is_md5; } ;
struct TYPE_23__ {TYPE_2__ picture_hash; } ;
struct TYPE_24__ {TYPE_18__* output_frame; scalar_t__ is_decoded; int poc; TYPE_3__ sei; TYPE_13__* ref; } ;
struct TYPE_21__ {int (* end_frame ) (TYPE_6__*) ;} ;
struct TYPE_20__ {scalar_t__* buf; } ;
struct TYPE_19__ {int frame; } ;
typedef TYPE_4__ HEVCContext ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVCodecContext ;


 int AV_EF_CRCCHECK ;
 int AV_EF_EXPLODE ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_NEW_EXTRADATA ;
 int av_frame_move_ref (void*,TYPE_18__*) ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 int * av_packet_get_side_data (TYPE_5__*,int ,int*) ;
 int decode_nal_units (TYPE_4__*,int ,int) ;
 int ff_hevc_output_frame (TYPE_4__*,void*,int) ;
 int ff_hevc_unref_frame (TYPE_4__*,TYPE_13__*,int ) ;
 int hevc_decode_extradata (TYPE_4__*,int *,int,int ) ;
 int stub1 (TYPE_6__*) ;
 int verify_md5 (TYPE_4__*,int ) ;

__attribute__((used)) static int hevc_decode_frame(AVCodecContext *avctx, void *data, int *got_output,
                             AVPacket *avpkt)
{
    int ret;
    int new_extradata_size;
    uint8_t *new_extradata;
    HEVCContext *s = avctx->priv_data;

    if (!avpkt->size) {
        ret = ff_hevc_output_frame(s, data, 1);
        if (ret < 0)
            return ret;

        *got_output = ret;
        return 0;
    }

    new_extradata = av_packet_get_side_data(avpkt, AV_PKT_DATA_NEW_EXTRADATA,
                                            &new_extradata_size);
    if (new_extradata && new_extradata_size > 0) {
        ret = hevc_decode_extradata(s, new_extradata, new_extradata_size, 0);
        if (ret < 0)
            return ret;
    }

    s->ref = ((void*)0);
    ret = decode_nal_units(s, avpkt->data, avpkt->size);
    if (ret < 0)
        return ret;

    if (avctx->hwaccel) {
        if (s->ref && (ret = avctx->hwaccel->end_frame(avctx)) < 0) {
            av_log(avctx, AV_LOG_ERROR,
                   "hardware accelerator failed to decode picture\n");
            ff_hevc_unref_frame(s, s->ref, ~0);
            return ret;
        }
    } else {

        if (avctx->err_recognition & AV_EF_CRCCHECK && s->is_decoded &&
            s->sei.picture_hash.is_md5) {
            ret = verify_md5(s, s->ref->frame);
            if (ret < 0 && avctx->err_recognition & AV_EF_EXPLODE) {
                ff_hevc_unref_frame(s, s->ref, ~0);
                return ret;
            }
        }
    }
    s->sei.picture_hash.is_md5 = 0;

    if (s->is_decoded) {
        av_log(avctx, AV_LOG_DEBUG, "Decoded frame with POC %d.\n", s->poc);
        s->is_decoded = 0;
    }

    if (s->output_frame->buf[0]) {
        av_frame_move_ref(data, s->output_frame);
        *got_output = 1;
    }

    return avpkt->size;
}
