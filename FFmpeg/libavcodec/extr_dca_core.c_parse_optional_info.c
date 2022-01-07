
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_11__ {int err_recognition; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int size_in_bits; int buffer; } ;
struct TYPE_9__ {int crctab; int request_channel_layout; int core_only; } ;
struct TYPE_8__ {int frame_size; int ext_audio_type; int xch_pos; int x96_pos; int xxch_pos; TYPE_7__* avctx; TYPE_3__ gb; scalar_t__ ext_audio_present; scalar_t__ prim_dmix_embedded; scalar_t__ aux_present; scalar_t__ ts_present; } ;
typedef TYPE_1__ DCACoreDecoder ;
typedef TYPE_2__ DCAContext ;


 int AVERROR_INVALIDDATA ;
 int AV_EF_EXPLODE ;
 int AV_LOG_ERROR ;
 int AV_RB32 (int ) ;



 int DCA_SYNCWORD_X96 ;
 int DCA_SYNCWORD_XCH ;
 int DCA_SYNCWORD_XXCH ;
 int FFMIN (int,int) ;
 int av_crc (int ,int,int ,int) ;
 int av_log (TYPE_7__*,int ,char*) ;
 int get_bits_count (TYPE_3__*) ;
 int parse_aux_data (TYPE_1__*) ;
 int skip_bits_long (TYPE_3__*,int) ;

__attribute__((used)) static int parse_optional_info(DCACoreDecoder *s)
{
    DCAContext *dca = s->avctx->priv_data;
    int ret = -1;


    if (s->ts_present)
        skip_bits_long(&s->gb, 32);


    if (s->aux_present && (ret = parse_aux_data(s)) < 0
        && (s->avctx->err_recognition & AV_EF_EXPLODE))
        return ret;

    if (ret < 0)
        s->prim_dmix_embedded = 0;


    if (s->ext_audio_present && !dca->core_only) {
        int sync_pos = FFMIN(s->frame_size / 4, s->gb.size_in_bits / 32) - 1;
        int last_pos = get_bits_count(&s->gb) / 32;
        int size, dist;
        uint32_t w1, w2 = 0;




        switch (s->ext_audio_type) {
        case 129:
            if (dca->request_channel_layout)
                break;






            for (; sync_pos >= last_pos; sync_pos--, w2 = w1) {
                w1 = AV_RB32(s->gb.buffer + sync_pos * 4);
                if (w1 == DCA_SYNCWORD_XCH) {
                    size = (w2 >> 22) + 1;
                    dist = s->frame_size - sync_pos * 4;
                    if (size >= 96
                        && (size == dist || size - 1 == dist)
                        && (w2 >> 15 & 0x7f) == 0x08) {
                        s->xch_pos = sync_pos * 32 + 49;
                        break;
                    }
                }
            }

            if (!s->xch_pos) {
                av_log(s->avctx, AV_LOG_ERROR, "XCH sync word not found\n");
                if (s->avctx->err_recognition & AV_EF_EXPLODE)
                    return AVERROR_INVALIDDATA;
            }
            break;

        case 130:



            for (; sync_pos >= last_pos; sync_pos--, w2 = w1) {
                w1 = AV_RB32(s->gb.buffer + sync_pos * 4);
                if (w1 == DCA_SYNCWORD_X96) {
                    size = (w2 >> 20) + 1;
                    dist = s->frame_size - sync_pos * 4;
                    if (size >= 96 && size == dist) {
                        s->x96_pos = sync_pos * 32 + 44;
                        break;
                    }
                }
            }

            if (!s->x96_pos) {
                av_log(s->avctx, AV_LOG_ERROR, "X96 sync word not found\n");
                if (s->avctx->err_recognition & AV_EF_EXPLODE)
                    return AVERROR_INVALIDDATA;
            }
            break;

        case 128:
            if (dca->request_channel_layout)
                break;



            for (; sync_pos >= last_pos; sync_pos--, w2 = w1) {
                w1 = AV_RB32(s->gb.buffer + sync_pos * 4);
                if (w1 == DCA_SYNCWORD_XXCH) {
                    size = (w2 >> 26) + 1;
                    dist = s->gb.size_in_bits / 8 - sync_pos * 4;
                    if (size >= 11 && size <= dist &&
                        !av_crc(dca->crctab, 0xffff, s->gb.buffer +
                                (sync_pos + 1) * 4, size - 4)) {
                        s->xxch_pos = sync_pos * 32;
                        break;
                    }
                }
            }

            if (!s->xxch_pos) {
                av_log(s->avctx, AV_LOG_ERROR, "XXCH sync word not found\n");
                if (s->avctx->err_recognition & AV_EF_EXPLODE)
                    return AVERROR_INVALIDDATA;
            }
            break;
        }
    }

    return 0;
}
