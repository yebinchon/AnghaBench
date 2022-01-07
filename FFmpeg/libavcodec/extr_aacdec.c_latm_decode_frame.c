
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_18__ {TYPE_1__* oc; int avctx; } ;
struct LATMContext {int initialized; TYPE_4__ aac_ctx; } ;
struct TYPE_17__ {long long extradata_size; int extradata; struct LATMContext* priv_data; } ;
struct TYPE_16__ {int size; int data; } ;
struct TYPE_14__ {int object_type; } ;
struct TYPE_15__ {TYPE_10__ m4ac; } ;
typedef int GetBitContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;






 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int LOAS_SYNC_WORD ;
 int aac_decode_er_frame (TYPE_3__*,void*,int*,int *) ;
 int aac_decode_frame_int (TYPE_3__*,void*,int*,int *,TYPE_2__*) ;
 int av_log (int ,int ,char*) ;
 int decode_audio_specific_config (TYPE_4__*,TYPE_3__*,TYPE_10__*,int ,long long,int) ;
 int get_bits (int *,int) ;
 int init_get_bits8 (int *,int ,int) ;
 int pop_output_configuration (TYPE_4__*) ;
 int push_output_configuration (TYPE_4__*) ;
 int read_audio_mux_element (struct LATMContext*,int *) ;
 int show_bits (int *,int) ;

__attribute__((used)) static int latm_decode_frame(AVCodecContext *avctx, void *out,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    struct LATMContext *latmctx = avctx->priv_data;
    int muxlength, err;
    GetBitContext gb;

    if ((err = init_get_bits8(&gb, avpkt->data, avpkt->size)) < 0)
        return err;


    if (get_bits(&gb, 11) != LOAS_SYNC_WORD)
        return AVERROR_INVALIDDATA;

    muxlength = get_bits(&gb, 13) + 3;

    if (muxlength > avpkt->size)
        return AVERROR_INVALIDDATA;

    if ((err = read_audio_mux_element(latmctx, &gb)))
        return (err < 0) ? err : avpkt->size;

    if (!latmctx->initialized) {
        if (!avctx->extradata) {
            *got_frame_ptr = 0;
            return avpkt->size;
        } else {
            push_output_configuration(&latmctx->aac_ctx);
            if ((err = decode_audio_specific_config(
                    &latmctx->aac_ctx, avctx, &latmctx->aac_ctx.oc[1].m4ac,
                    avctx->extradata, avctx->extradata_size*8LL, 1)) < 0) {
                pop_output_configuration(&latmctx->aac_ctx);
                return err;
            }
            latmctx->initialized = 1;
        }
    }

    if (show_bits(&gb, 12) == 0xfff) {
        av_log(latmctx->aac_ctx.avctx, AV_LOG_ERROR,
               "ADTS header detected, probably as result of configuration "
               "misparsing\n");
        return AVERROR_INVALIDDATA;
    }

    switch (latmctx->aac_ctx.oc[1].m4ac.object_type) {
    case 130:
    case 128:
    case 129:
    case 131:
        err = aac_decode_er_frame(avctx, out, got_frame_ptr, &gb);
        break;
    default:
        err = aac_decode_frame_int(avctx, out, got_frame_ptr, &gb, avpkt);
    }
    if (err < 0)
        return err;

    return muxlength;
}
