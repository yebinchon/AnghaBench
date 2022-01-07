
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int delay_buf3; int delay_buf2; int delay_buf1; } ;
struct TYPE_7__ {int temp_buf; TYPE_4__* units; int gb; int coding_mode; } ;
struct TYPE_6__ {int channels; TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVCodecContext ;
typedef TYPE_2__ ATRAC3Context ;


 int decode_channel_sound_unit (TYPE_2__*,int *,TYPE_4__*,float*,int,int ) ;
 int ff_atrac_iqmf (float*,float*,int,float*,int ,int ) ;
 int get_bits_left (int *) ;
 int init_get_bits (int *,int const*,int) ;
 int show_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int al_decode_frame(AVCodecContext *avctx, const uint8_t *databuf,
                           int size, float **out_samples)
{
    ATRAC3Context *q = avctx->priv_data;
    int ret, i;


    init_get_bits(&q->gb, databuf, size * 8);


    for (i = 0; i < avctx->channels; i++) {
        ret = decode_channel_sound_unit(q, &q->gb, &q->units[i],
                                        out_samples[i], i, q->coding_mode);
        if (ret != 0)
            return ret;
        while (i < avctx->channels && get_bits_left(&q->gb) > 6 && show_bits(&q->gb, 6) != 0x28) {
            skip_bits(&q->gb, 1);
        }
    }


    for (i = 0; i < avctx->channels; i++) {
        float *p1 = out_samples[i];
        float *p2 = p1 + 256;
        float *p3 = p2 + 256;
        float *p4 = p3 + 256;
        ff_atrac_iqmf(p1, p2, 256, p1, q->units[i].delay_buf1, q->temp_buf);
        ff_atrac_iqmf(p4, p3, 256, p3, q->units[i].delay_buf2, q->temp_buf);
        ff_atrac_iqmf(p1, p3, 512, p1, q->units[i].delay_buf3, q->temp_buf);
    }

    return 0;
}
