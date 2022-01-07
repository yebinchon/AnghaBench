
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef char uint8_t ;
typedef int uint64_t ;
struct TYPE_23__ {int str; } ;
struct TYPE_22__ {TYPE_1__* priv_data; } ;
struct TYPE_21__ {char* data; int size; } ;
struct TYPE_20__ {scalar_t__ num_rects; } ;
struct TYPE_19__ {int tracksize; int size_var; int readorder; scalar_t__ count_s; scalar_t__ box_flags; scalar_t__ style_entries; } ;
struct TYPE_18__ {int type; int base_size; int (* decode ) (char const*,TYPE_1__*,TYPE_3__*) ;} ;
typedef TYPE_1__ MovTextContext ;
typedef TYPE_2__ AVSubtitle ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ AVBPrint ;


 int AVERROR_INVALIDDATA ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_LOG_ERROR ;
 int AV_RB16 (char*) ;
 int AV_RB32 (char const*) ;
 int AV_RB64 (char const*) ;
 int FFMIN (int,int) ;
 int av_bprint_finalize (TYPE_5__*,int *) ;
 int av_bprint_init (TYPE_5__*,int ,int ) ;
 int av_log (TYPE_4__*,int ,char*) ;
 size_t box_count ;
 TYPE_14__* box_types ;
 int ff_ass_add_rect (TYPE_2__*,int ,int ,int ,int *,int *) ;
 int mov_text_cleanup (TYPE_1__*) ;
 int stub1 (char const*,TYPE_1__*,TYPE_3__*) ;
 int text_to_ass (TYPE_5__*,char*,char*,TYPE_4__*) ;

__attribute__((used)) static int mov_text_decode_frame(AVCodecContext *avctx,
                            void *data, int *got_sub_ptr, AVPacket *avpkt)
{
    AVSubtitle *sub = data;
    MovTextContext *m = avctx->priv_data;
    int ret;
    AVBPrint buf;
    char *ptr = avpkt->data;
    char *end;
    int text_length, tsmb_type, ret_tsmb;
    uint64_t tsmb_size;
    const uint8_t *tsmb;
    size_t i;

    if (!ptr || avpkt->size < 2)
        return AVERROR_INVALIDDATA;
    if (avpkt->size == 2)
        return AV_RB16(ptr) == 0 ? 0 : AVERROR_INVALIDDATA;






    text_length = AV_RB16(ptr);
    end = ptr + FFMIN(2 + text_length, avpkt->size);
    ptr += 2;

    mov_text_cleanup(m);

    tsmb_size = 0;
    m->tracksize = 2 + text_length;
    m->style_entries = 0;
    m->box_flags = 0;
    m->count_s = 0;

    av_bprint_init(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);
    if (text_length + 2 != avpkt->size) {
        while (m->tracksize + 8 <= avpkt->size) {

            tsmb = ptr + m->tracksize - 2;
            tsmb_size = AV_RB32(tsmb);
            tsmb += 4;
            tsmb_type = AV_RB32(tsmb);
            tsmb += 4;

            if (tsmb_size == 1) {
                if (m->tracksize + 16 > avpkt->size)
                    break;
                tsmb_size = AV_RB64(tsmb);
                tsmb += 8;
                m->size_var = 16;
            } else
                m->size_var = 8;


            if (tsmb_size == 0) {
                av_log(avctx, AV_LOG_ERROR, "tsmb_size is 0\n");
                return AVERROR_INVALIDDATA;
            }

            if (tsmb_size > avpkt->size - m->tracksize)
                break;

            for (i = 0; i < box_count; i++) {
                if (tsmb_type == box_types[i].type) {
                    if (m->tracksize + m->size_var + box_types[i].base_size > avpkt->size)
                        break;
                    ret_tsmb = box_types[i].decode(tsmb, m, avpkt);
                    if (ret_tsmb == -1)
                        break;
                }
            }
            m->tracksize = m->tracksize + tsmb_size;
        }
        text_to_ass(&buf, ptr, end, avctx);
        mov_text_cleanup(m);
    } else
        text_to_ass(&buf, ptr, end, avctx);

    ret = ff_ass_add_rect(sub, buf.str, m->readorder++, 0, ((void*)0), ((void*)0));
    av_bprint_finalize(&buf, ((void*)0));
    if (ret < 0)
        return ret;
    *got_sub_ptr = sub->num_rects > 0;
    return avpkt->size;
}
